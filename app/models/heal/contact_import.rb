class Heal::ContactImport
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :file

  FIELDS_TO_DIRECTLY_IMPORT = [:first_name, :last_name, :title, :organization_name,
                               :office_phone_number, :email, :cell_phone_number, :fax, :website,
                               :address_line_1, :address_line_2, :address_city, :address_state, :address_zip,
                               :heal_champion, :heal_champion_notes, :notes]

  ALL_FIELDS_THAT_CAN_BE_IMPORTED = [:honorific] + FIELDS_TO_DIRECTLY_IMPORT[0,4] + [:cities] + FIELDS_TO_DIRECTLY_IMPORT[4,FIELDS_TO_DIRECTLY_IMPORT.length - 4] + [:interest_level, :position_type, :organization_type, :cities]

  STATE_ABBREVIATIONS = ['AL', 'AK', 'AZ', 'AR', 'CA', 'CO', 'CT', 'DE', 'FL', 'GA', 'HI', 'ID', 'IL', 'IN', 'IA', 'KS', 'KY', 'LA', 'ME', 'MD', 'MA', 'MI', 'MN', 'MS', 'MO', 'MT', 'NE', 'NV', 'NH', 'NJ', 'NM', 'NY', 'NC', 'ND', 'OH', 'OK', 'OR', 'PA', 'RI', 'SC', 'SD', 'TN', 'TX', 'UT', 'VT', 'VA', 'WA', 'WV', 'WI', 'WY']

  def initialize(attributes = {})
    attributes.each { |name, value| send("#{name}=", value) }
  end

  def persisted?
    false
  end

  def save(db_instance)
    contacts = imported_contacts(db_instance)
    if contacts.map{|contact| contact.errors.count == 0 && contact.valid? }.all?
      contacts.each(&:save!)
      true
    else
      contacts.each_with_index do |contact, index|
        contact.errors.full_messages.each do |message|
          errors.add :base, "Row #{index+2}: #{message}"
        end
      end
      false
    end
  end

  def imported_contacts(db_instance)
    @imported_contacts ||= load_imported_contacts(db_instance)
  end

  def load_imported_contacts(db_instance)
    spreadsheet = open_spreadsheet
    header = spreadsheet.row(1).map{ |str| str.to_sym} #convert each element to a symbol
    (2..spreadsheet.last_row).map do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      contact = Heal::Contact.new
      contact.database_instance = db_instance
      contact.attributes = row.to_hash.slice(*FIELDS_TO_DIRECTLY_IMPORT)

      current_record = db_instance.contacts.find_by(first_name: contact.first_name, last_name: contact.last_name, organization_name: contact.organization_name)
      if current_record.present?
        #error
        contact.errors[:base] << "There is already a contact in your database named '#{contact.first_name} #{contact.last_name}' who works for the organization ''#{contact.organization_name}''"
      end

      contact.interest_level = find_item_in_list(contact, row[:interest_level], db_instance.interest_levels)
      contact.position_type = find_item_in_list(contact, row[:position_type], db_instance.position_types)
      contact.honorific = find_item_in_list(contact, row[:honorific], db_instance.honorifics)
      contact.organization_type = find_item_in_list(contact, row[:organization_type], db_instance.organization_types)

      cities_array = []

      if row[:cities].present?
        city_names_array = row[:cities].split(",").map{ |c| c.strip }
        city_names_array.each do |c|
          state = ""
          if (c[-3,1] == " ") && c[-2,2].upcase.in?(STATE_ABBREVIATIONS)
            # the 3rd to last character is a space,
            # and the last 2 characters are in the state abbreviations list.
            state = c[-2,2]
            city_name = c[0...-3].strip

            city_matches = db_instance.cities.where(name: city_name, state: state)
          else
            city_matches = db_instance.cities.where(name: city_name)
          end

          if city_matches.nil? || city_matches.count == 0
            if state == ""
              contact.errors[:base] << "There are no cities in the database with the name '#{c}'."
            else
              contact.errors[:base] << "There are no cities in the database with the name '#{city_name}' and state '#{state}'."
            end
          elsif city_matches.count > 1
            contact.errors[:base] << "There were multiple cities with the name '#{c}' in the database."
          else
            #there's one and only one. add it to our list.
            cities_array << city_matches.first
          end
        end

        #add the cities to the contact object.
        cities_array.each{ |city_obj| contact.cities << city_obj }
      end

      contact
    end
  end

  private
    def find_item_in_list(parent_object, name, item_type)
      return nil if name.nil?
      item = item_type.find_by(name: name)
      if item.nil?
        parent_object.errors[:base] << "Name '#{name}' was not recognized as a #{item_type.name}"
        return nil
      else
        #we did find an object by this name.
        return item
      end
    end

    def open_spreadsheet
      case File.extname(file.original_filename)
        when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
        when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
        #when ".gsheet" then Roo::Google.new(file.path, nil, :ignore)
        else raise "Unknown file type: #{file.original_filename}"
      end
    end
end