class Heal::ContactImport
  extend ActiveModel::Naming
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :file

  def self.fields_to_directly_import
    [:first_name, :last_name, :title, :organization_name,
      :office_phone_number, :email, :cell_phone_number, :fax, :website,
      :address_line_1, :address_line_2, :address_city, :address_state, :address_zip,
      :heal_champion, :heal_champion_notes, :notes]
  end

  def initialize(attributes = {})
    attributes.each { |name, value| send("#{name}=", value) }
  end

  def persisted?
    false
  end

  def save
    if imported_contacts.map(&:valid?).all?
      imported_contacts.each(&:save!)
      true
    else
      imported_contacts.each_with_index do |contact, index|
        contact.errors.full_messages.each do |message|
          errors.add :base, "Row #{index+2}: #{message}"
        end
      end
      false
    end
  end

  def imported_contacts
    @imported_contacts ||= load_imported_contacts
  end

  def load_imported_contacts
    spreadsheet = open_spreadsheet
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).map do |i|
      row = Hash[[header, spreadsheet.row(i)].transpose]
      contact = Heal::Contact.new
      contact.database_instance = current_db
      contact.attributes = row.to_hash.slice(fields_to_directly_import)

      contact.interest_level = Heal::InterestLevel.find_by(:name, row[:interest_level])
      contact.position_type = Heal::PositionType.find_by(:name, row[:position_type])
      contact.honorific = Heal::Honorific.find_by(:name, row[:honorific])
      contact.organization_type = Heal::OrganizationType.find_by(:name, row[:organization_type])

      contact.save
    end
  end

  def open_spreadsheet
    case File.extname(file.original_filename)
      when ".xls" then Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Excelx.new(file.path, nil, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
    end
  end
end