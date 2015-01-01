namespace :heal_ophi_contacts do

  def upload_contacts
    dbi_ophi = Heal::DatabaseInstance.find_by(instance_name: OPHI_DATABASE_INSTANCE_NAME)

    communications = []

    contacts << { first_name: "Lori", last_name: "Mason", title: "Supervisor - Parks & Rec", organization: "City of Hillsboro", heal_city: 'Hillsboro, OR', phone: '', cell: '', fax: '', email: 'lori.mason@hillsboro-oregon.gov', address_line_1: "", address_line_2: "", address_city: 'Hillsboro', address_state: '', address_zip: '', heal_champion: 'NO', heal_champion_notes: "", other_contact_info: "", position_type: 'City Staff', notes: "Works for Paula Rose at Hillsboro Aquatics Center (part of parks &amp; rec)" }

    communications_added = 0
    communications_added_errors = 0
    communications_updated = 0
    communications_updated_errors = 0
    communications_cities_added = 0
    communications_cities_errors = 0
    communications_contacts_added = 0
    communications_contacts_errors = 0
    error_messages = []

    communications.each do |communication|
      saved_communication = dbi_ophi.communications.find_by()
      if saved_communication.nil?
        saved_communication = Heal::Communication.new
        saved_communication.database_instance = dbi_ophi

        saved_contact.first_name = contact[:first_name]
        saved_contact.last_name = contact[:last_name]
        saved_contact.organization_name = contact[:organization]

        if saved_contact.save
          contacts_added += 1
        else
          contacts_added_errors += 1
          error_messages << saved_contact.errors.inspect
          break
        end
      end

      saved_contact.title = contact[:title] if contact[:title].present?
      saved_contact.organization_name = contact[:organization]
      saved_contact.office_phone_number = contact[:phone] if contact[:phone].present?
      saved_contact.cell_phone_number = contact[:cell] if contact[:cell].present?
      saved_contact.fax = contact[:fax] if contact[:fax].present?

      saved_contact.email = contact[:email] if contact[:email].present?
      saved_contact.address_line_1 = contact[:address_line_1] if contact[:address_line_1].present?
      saved_contact.address_line_2 = contact[:address_line_2] if contact[:address_line_2].present?
      saved_contact.address_city = contact[:address_city] if contact[:address_city].present?
      saved_contact.address_state = contact[:address_state] if contact[:address_state].present?
      saved_contact.address_zip = contact[:address_zip] if contact[:address_zip].present?
      saved_contact.notes = contact[:notes] if contact[:notes].present?
      saved_contact.heal_champion = handle_yes_no(contact[:heal_champion])
      saved_contact.heal_champion_notes = contact[:heal_champion_notes] if contact[:heal_champion_notes].present?

      if contact[:notes].present? && contact[:other_contact_info].present?
        saved_contact.notes = "Other contact info:\n#{ render_to_ascii(contact[:other_contact_info]) }\n\nNotes:\n#{ render_to_ascii(contact[:notes]) }"
      elsif contact[:other_contact_info].present?
        saved_contact.notes = render_to_ascii(contact[:other_contact_info])
      elsif contact[:notes].present?
        saved_contact.notes = render_to_ascii(contact[:notes])
      end

      if contact[:position_type].present?
        position_type = dbi_ophi.position_types.find_by(name: contact[:position_type])
        if position_type.nil?
          contacts_updated_errors += 1
          error_messages << "Position type '#{contact[:position_type]}' was not found."
          break
        else
          saved_contact.position_type_id = position_type.id
        end
      end

      saved_contact.cities.delete_all #clear out any existing cities associated with this contact.

      if contact[:heal_city].present?
        cities_array = contact[:heal_city].split(",")
        Range.new(0, cities_array.length - 1).step(2) do |index|
          city_name = cities_array[index].strip
          state_name = cities_array[index+1].strip
          matches = dbi_ophi.cities.where(name: city_name, state: state_name)
          if matches.count > 1
            contact_cities_errors += 1
            error_messages << "Error: more than one city matches #{city_name}, #{state_name}."
            break
          elsif matches.count == 0
            contact_cities_errors += 1
            error_messages << "Error: no city matches #{city_name}, #{state_name}."
            break
          else
            saved_city = matches.first
            saved_contact.cities << saved_city #associate this city with this contact.
            contact_cities_added += 1
          end
        end
      end

      if saved_contact.save
        contacts_updated += 1
      else
        contacts_updated_errors += 1
        error_messages << saved_contact.errors.inspect
        break
      end

    end

    puts error_messages
    status_string = "Contacts added: #{contacts_added} / errors: #{contacts_added_errors}. Updated: #{contacts_updated}/ errors:#{contacts_updated_errors}."
    puts status_string

    return status_string
  end
end