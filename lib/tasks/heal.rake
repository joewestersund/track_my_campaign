namespace :heal do
  IPHI_DATABASE_INSTANCE_NAME = "IPHI-test"
  CCPHA_DATABASE_INSTANCE_NAME = "CCPHA"
  OPHI_DATABASE_INSTANCE_NAME = "OPHI-test"
  LVC_DATABASE_INSTANCE_NAME = "LiveWell Colorado"


  DEFAULT_USER_PASSWORD = 'testing'

  desc "set up default HEAL databases"
  task setup: :environment do

    user_iphi = User.create({first_name: 'Marisa', last_name: 'Jones', email: 'mjones@institutephi.org', password: DEFAULT_USER_PASSWORD, password_confirmation: DEFAULT_USER_PASSWORD })
    user_ccpha = User.create({first_name: 'Kanat', last_name: 'Tibet', email: 'kt@publichealthadvocacy.org', password: DEFAULT_USER_PASSWORD, password_confirmation: DEFAULT_USER_PASSWORD })
    user_ophi = User.create({first_name: 'Beth', last_name: 'Kaye', email: 'bethkaye@ophi.org', password: DEFAULT_USER_PASSWORD, password_confirmation: DEFAULT_USER_PASSWORD })

    dbi_iphi = Heal::DatabaseInstance.create({instance_name: IPHI_DATABASE_INSTANCE_NAME})
    dbi_ccpha = Heal::DatabaseInstance.create({instance_name: CCPHA_DATABASE_INSTANCE_NAME})
    dbi_ophi = Heal::DatabaseInstance.create({instance_name: OPHI_DATABASE_INSTANCE_NAME})

    UserPermission.create({database_instance: dbi_iphi, user: user_iphi})
    UserPermission.create({database_instance: dbi_ccpha, user: user_ccpha})
    UserPermission.create({database_instance: dbi_ophi, user: user_ophi})

    [dbi_iphi, dbi_ccpha, dbi_ophi].each do |dbi|
      Heal::CommunicationType.create({database_instance: dbi, name: 'In Person Meeting', order_in_list: 1})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Council Presentation', order_in_list: 2})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Presentation at Event', order_in_list: 3})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Webinar', order_in_list: 4})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Workshop', order_in_list: 5})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Email Exchange', order_in_list: 6})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Phone Call', order_in_list: 7})
      Heal::CommunicationType.create({database_instance: dbi, name: 'Peer Networking Exchange', order_in_list: 8})

      Heal::Topic.create({database_instance: dbi, name: 'General Overview'  , order_in_list: 1})
      Heal::Topic.create({database_instance: dbi, name: 'Drafting Resolution'  , order_in_list: 2})
      Heal::Topic.create({database_instance: dbi, name: 'Strategizing'  , order_in_list: 3})
      Heal::Topic.create({database_instance: dbi, name: 'Policy Development'  , order_in_list: 4})

      Heal::Honorific.create({database_instance: dbi, name: 'Mr.', order_in_list: 1})
      Heal::Honorific.create({database_instance: dbi, name: 'Ms.', order_in_list: 2})
      Heal::Honorific.create({database_instance: dbi, name: 'Dr.', order_in_list: 3})

      Heal::InterestLevel.create({database_instance: dbi, name: 'Hot', order_in_list: 1})
      Heal::InterestLevel.create({database_instance: dbi, name: 'Warm', order_in_list: 2})
      Heal::InterestLevel.create({database_instance: dbi, name: 'Cool', order_in_list: 3})
      Heal::InterestLevel.create({database_instance: dbi, name: 'Cold', order_in_list: 4})

      Heal::LeagueDivision.create({database_instance: dbi, name: 'League Division 1', order_in_list: 1})
      Heal::LeagueDivision.create({database_instance: dbi, name: 'League Division 2', order_in_list: 2})
      Heal::LeagueDivision.create({database_instance: dbi, name: 'League Division 3', order_in_list: 3})

      Heal::MilestoneType.create({database_instance: dbi, name: 'Introduce City to HEAL', order_in_list: 1})
      Heal::MilestoneType.create({database_instance: dbi, name: 'Resolution Technical Assistance', order_in_list: 2})
      Heal::MilestoneType.create({database_instance: dbi, name: 'Draft Resolution', order_in_list: 3})
      Heal::MilestoneType.create({database_instance: dbi, name: 'Adopt Resolution', order_in_list: 4})
      Heal::MilestoneType.create({database_instance: dbi, name: 'Adopt Policy', order_in_list: 5})

      Heal::OrganizationType.create({database_instance: dbi, name: 'City', order_in_list: 1})
      Heal::OrganizationType.create({database_instance: dbi, name: 'League', order_in_list: 2})
      Heal::OrganizationType.create({database_instance: dbi, name: 'Community Organization', order_in_list: 3})

      Heal::Policy.create({database_instance: dbi, name: 'General Plan', order_in_list: 1})
      Heal::Policy.create({database_instance: dbi, name: 'Compact Mixed Use', order_in_list: 2})
      Heal::Policy.create({database_instance: dbi, name: 'Transit Oriented Development', order_in_list: 3})
      Heal::Policy.create({database_instance: dbi, name: 'Increase Walkability and Bikeability', order_in_list: 4})
      Heal::Policy.create({database_instance: dbi, name: 'Capital Improvement Priority on PA, Walking, and Biking', order_in_list: 5})
      Heal::Policy.create({database_instance: dbi, name: 'Open Space (increase)', order_in_list: 6})
      Heal::Policy.create({database_instance: dbi, name: 'Joint Use', order_in_list: 7})
      Heal::Policy.create({database_instance: dbi, name: 'Farmers Markets', order_in_list: 8})
      Heal::Policy.create({database_instance: dbi, name: 'Community Gardens', order_in_list: 9})
      Heal::Policy.create({database_instance: dbi, name: 'Nutrition Standards', order_in_list: 10})
      Heal::Policy.create({database_instance: dbi, name: 'Breastfeeding Accommodations', order_in_list: 11})
      Heal::Policy.create({database_instance: dbi, name: 'WW- Activity Breaks', order_in_list: 12})
      Heal::Policy.create({database_instance: dbi, name: 'WW- other', order_in_list: 13})

      Heal::PositionType.create({database_instance: dbi, name: 'Elected', order_in_list: 1})
      Heal::PositionType.create({database_instance: dbi, name: 'City Manager', order_in_list: 2})
      Heal::PositionType.create({database_instance: dbi, name: 'Staff', order_in_list: 3})

      Heal::StatusType.create({database_instance: dbi, name: 'Not Started', order_in_list: 1})
      Heal::StatusType.create({database_instance: dbi, name: 'In Progress', order_in_list: 2})
      Heal::StatusType.create({database_instance: dbi, name: 'Completed', order_in_list: 3})
    end

    Heal::CityDesignation.create({database_instance: dbi_iphi, name: "Silver", order_in_list: 1})
    Heal::CityDesignation.create({database_instance: dbi_iphi, name: "Gold", order_in_list: 2})
    Heal::CityDesignation.create({database_instance: dbi_iphi, name: "Platinum", order_in_list: 3})

    Heal::JurisdictionType.create({database_instance: dbi_iphi, name: 'City', order_in_list: 1})
    Heal::JurisdictionType.create({database_instance: dbi_iphi, name: 'Town', order_in_list: 2})
    Heal::JurisdictionType.create({database_instance: dbi_iphi, name: 'County', order_in_list: 3})
    Heal::JurisdictionType.create({database_instance: dbi_iphi, name: 'State', order_in_list: 4})

    [dbi_ccpha, dbi_ophi].each do |dbi|
      Heal::CityDesignation.create({database_instance: dbi, name: "Eager", order_in_list: 1})
      Heal::CityDesignation.create({database_instance: dbi, name: "Active", order_in_list: 2})
      Heal::CityDesignation.create({database_instance: dbi, name: "Fit", order_in_list: 3})

      Heal::JurisdictionType.create({database_instance: dbi, name: 'City', order_in_list: 1})
      Heal::JurisdictionType.create({database_instance: dbi, name: 'County', order_in_list: 2})
      Heal::JurisdictionType.create({database_instance: dbi, name: 'State', order_in_list: 3})
    end
  end

  desc "set up Contacts data for CCPHA"
  task upload_ccpha_contacts: :environment do

    contacts = []

    #contacts << { honorific: '', first_name: 'Julisa', last_name: "Alvizo-Silva", title: "Program Director", organization_name: "County of Riverside Dept. of Public Health - Community Outreach/Injury Prevention Services", address_line1: "Sherman Building 4065 County Circle Dr.", address_line_2: '', address_city: 'Riverside', address_state: 'CA', address_zip: '92503', phone: '(951) 358-7181', cell_phone: '', fax: '(951) 358-7175', email: "jalvizo@rivcocha.org", website: '' }

    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    initial_count = dbi_ccpha.contacts.count
    if initial_count > 0
      puts "CCPHA database already has contacts in it. Quitting."
    else

      contacts.each do |c|
        contact = Heal::Contact.new

        if c[:honorific].present? and c[:honorific] != ""
          honorific = dbi_ccpha.honorifics.find_by(name: c[:honorific])
          contact.honorific_id = honorific.id if honorific.present?
        end

        contact.first_name = c[:first_name]
        contact.last_name = c[:last_name]
        contact.title = c[:title]
        contact.organization_name = c[:organization_name]
        contact.address_line_1 = c[:address_line1]
        contact.address_line_2 = c[:address_line_2]
        contact.address_city = c[:address_city]
        contact.address_state = c[:address_state]
        contact.address_zip = c[:address_zip]
        contact.office_phone_number = c[:phone]
        contact.cell_phone_number = c[:cell_phone]
        contact.fax = c[:fax]
        contact.email = c[:email]
        contact.website = c[:website]

        contact.database_instance = dbi_ccpha

        puts contact.errors.inspect unless contact.save
      end

      final_count = dbi_ccpha.contacts.count
      number_added = final_count - initial_count
      error_count = contacts.count - (number_added)
      puts "Added #{number_added} contacts to the CCPHA HEAL Cities database. There were #{error_count} errors."
    end
  end


  desc "set up Contacts data for IPHI"
  task upload_iphi_contacts: :environment do

    contacts = []

    #contacts << { first_name: 'Carole', last_name: 'Abruzzese', title: 'COMMISSIONER', organization_name: 'TOWN OF OXFORD', address_line1: 'PO Box 339', address_line_2: '', address_city: 'Oxford', address_state: 'MD', address_zip: '21654', phone: '', cell_phone: '(410)725-0885', email: 'theshore_98@yahoo.com', website: 'www.oxfordmd.net'}

    dbi_iphi = Heal::DatabaseInstance.find_by(instance_name: IPHI_DATABASE_INSTANCE_NAME)

    initial_count = dbi_iphi.contacts.count
    if initial_count > 0
      puts "IPHI database already has contacts in it. Quitting."
    else

      contacts.each do |c|
        contact = Heal::Contact.new

        if c[:honorific].present? and c[:honorific] != ""
          honorific = dbi_iphi.honorifics.find_by(name: c[:honorific])
          contact.honorific_id = honorific.id if honorific.present?
        end

        contact.first_name = c[:first_name]
        contact.last_name = c[:last_name]
        contact.title = c[:title]
        contact.organization_name = c[:organization_name]
        contact.address_line_1 = c[:address_line1]
        contact.address_line_2 = c[:address_line_2]
        contact.address_city = c[:address_city]
        contact.address_state = c[:address_state]
        contact.address_zip = c[:address_zip]
        contact.office_phone_number = c[:phone]
        contact.cell_phone_number = c[:cell_phone]
        contact.fax = c[:fax]
        contact.email = c[:email]
        contact.website = c[:website]

        contact.database_instance = dbi_iphi

        puts contact.errors.inspect unless contact.save
      end

      final_count = dbi_iphi.contacts.count
      number_added = final_count - initial_count
      error_count = contacts.count - (number_added)
      puts "Added #{number_added} contacts to the IPHI HEAL Cities database. There were #{error_count} errors."
    end
  end

  desc "set up Cities data for CCPHA"
  task upload_ccpha_cities: :environment do

    cities = []

    #cities << {name:"Emeryville", county:"Alameda"}

    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    initial_count = dbi_ccpha.cities.count
    if initial_count > 0
      puts "CCPHA database already has cities in it. Quitting."
    else


      jt_city = dbi_ccpha.jurisdiction_types.find_by(name: "City")

      cities.each do |c|
        city = Heal::City.new

        city.name = c[:name]
        city.county = c[:county]
        city.jurisdiction_type = jt_city
        city.kp_service_area = true
        city.state = 'CA'
        city.database_instance = dbi_ccpha

        puts city.errors.inspect unless city.save
      end

      final_count = dbi_ccpha.cities.count
      number_added = final_count - initial_count
      error_count = cities.count - (number_added)
      puts "Added #{number_added} cities to the CCPHA HEAL Cities database. There were #{error_count} errors."
    end
  end

  desc "set up Cities data for IPHI"
  task upload_iphi_cities: :environment do

    cities = []

    #cities << {name:"Aberdeen", county:"Harford",state:"MD",jurisdiction_type:"City",league_division:"Cecil & Harford County Chapter",population: 14959,kp_service_area:"No",municipal_median_income: 39190,state_median_income:71707,heal_designation:"",resolution_passed:""}

    dbi_iphi = Heal::DatabaseInstance.find_by(instance_name: IPHI_DATABASE_INSTANCE_NAME)

    initial_count = dbi_iphi.cities.count
    if initial_count > 0
      puts "IPHI database already has cities in it. Quitting."
    else

      cities.each do |c|
        city = Heal::City.new

        city.name = c[:name]
        city.county = c[:county]
        city.state = c[:state]

        jt = dbi_iphi.jurisdiction_types.find_by(name: c[:jurisdiction_type])
        city.jurisdiction_type = jt if jt.present?

        if c[:kp_service_area] == "yes"
          city.kp_service_area = true
        elsif c[:kp_service_area] == "no"
          city.kp_service_area = false
        else  #assume it's in the service territory, unless told otherwise
          city.kp_service_area = true
        end

        city.state_median_income = c[:state_median_income] if c[:state_median_income].present?
        city.city_median_income = c[:municipal_median_income] if c[:municipal_median_income].present?

        if c[:heal_designation].present?
          d = dbi_iphi.city_designations.find_by(name: c[:heal_designation])
          if d.present?
            city.city_designation = d
          end
        end
        city.database_instance = dbi_iphi

        puts city.errors.inspect unless city.save
      end

      final_count = dbi_iphi.cities.count
      number_added = final_count - initial_count
      error_count = cities.count - (number_added)
      puts "Added #{number_added} cities to the IPHI HEAL Cities database. There were #{error_count} errors."
    end
  end

  desc "set up Cities data for LiveWell Colorado"
  task upload_livewellcolorado_cities: :environment do

    cities = []

    #cities << {name:"Arvada", state:"CO"}

    dbi_lvc = Heal::DatabaseInstance.find_by(instance_name: LVC_DATABASE_INSTANCE_NAME)

    initial_count = dbi_lvc.cities.count
    if initial_count > 0
      puts "LiveWell Colorado database already has cities in it. Quitting."
    else
      jt = dbi_lvc.jurisdiction_types.find_by(name: "City")

      cities.each do |c|
        city = Heal::City.new

        city.name = c[:name]
        city.state = c[:state]
        city.jurisdiction_type = jt

        #assume it's in the service territory, unless told otherwise
        city.kp_service_area = true

        city.database_instance = dbi_lvc

        puts city.errors.inspect unless city.save
      end

      final_count = dbi_lvc.cities.count
      number_added = final_count - initial_count
      error_count = cities.count - (number_added)
      puts "Added #{number_added} cities to the LiveWell Colorado Cities database. There were #{error_count} errors."
    end

  end

  desc "set up Contacts data for LiveWell Colorado"
  task upload_livewellcolorado_contacts: :environment do

    contacts = []

    #contacts << { first_name: 'Carole', last_name: 'Abruzzese', title: 'COMMISSIONER', organization_name: 'TOWN OF OXFORD', address_line1: 'PO Box 339', address_line_2: '', address_city: 'Oxford', address_state: 'MD', address_zip: '21654', phone: '', cell_phone: '(410)725-0885', email: 'theshore_98@yahoo.com', website: 'www.oxfordmd.net'}

    dbi_lvc = Heal::DatabaseInstance.find_by(instance_name: LVC_DATABASE_INSTANCE_NAME)

    initial_count = dbi_lvc.contacts.count
    if initial_count > 0
      puts "LiveWell Colorado database already has contacts in it. Quitting."
    else
      duplicate_contacts = 0
      error_list = []

      contacts.each do |c|
        contact = Heal::Contact.new

        first_name_stripped = c[:first_name].strip
        last_name_stripped = c[:last_name].strip

        #check if a contact of this first/last name already exists
        #if so, don't add. List contains duplicates.
        existing_contact = dbi_lvc.contacts.find_by(first_name: first_name_stripped, last_name: last_name_stripped)
        if !existing_contact.nil?
          duplicate_contacts += 1
          #contact = existing_contact
        else

          #connect to a city, if one is listed.
          if c[:city_name].present? and c[:city_name] != ""
            city = dbi_lvc.cities.find_by(name: c[:city_name])
            contact.cities << city if city.present?
          end

          if c[:honorific].present? and c[:honorific] != ""
            honorific = dbi_lvc.honorifics.find_by(name: c[:honorific])
            contact.honorific_id = honorific.id if honorific.present?
          end

          contact.first_name = first_name_stripped
          contact.last_name = last_name_stripped
          contact.title = c[:title].strip if c[:title].present? and c[:title] != ""
          contact.organization_name = c[:organization_name].strip if c[:organization_name].present? and c[:organization_name] != ""
          contact.office_phone_number = c[:phone].strip if c[:phone].present? and c[:phone] != ""
          contact.email = c[:email].strip if c[:email].present? and c[:email] != ""

          contact.database_instance = dbi_lvc

          if not contact.save
            puts contact.errors.inspect
            error_list << contact.errors.inspect
          end
        end
      end

      final_count = dbi_lvc.contacts.count
      number_added = final_count - initial_count
      error_count = contacts.count - (number_added) - duplicate_contacts
      puts error_list
      puts "Added #{number_added} contacts to the LiveWell Colorado HEAL Cities database. #{duplicate_contacts} duplicates were not added, and there were #{error_count} errors."
    end
  end

  desc "update city field for CCPHA Contacts data"
  task update_ccpha_contact_cities: :environment do

    contact_cities_added = 0
    error_count = 0

    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    dbi_ccpha.contacts.each do |contact|

      if contact.cities.count == 0
        #see if we can add a city, based on the organization name

        if contact.organization_name.present?
          cities = dbi_ccpha.cities.where(name: contact.organization_name)
          if cities.count == 1
            contact.cities << cities.first
            if contact.save
              contact_cities_added += 1
            else
              error_count += 1
              puts contact.errors.inspect
            end
            #break #do only one loop, to test.
          end
        end
      end
    end

    puts "Added city information to #{contact_cities_added} contacts in the CCPHA HEAL Cities database. There were #{error_count} errors."
  end

  desc "migrate city designation in cities table to separate table"
  task migrate_city_designation_data: :environment do

    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)
    dbi_iphi = Heal::DatabaseInstance.find_by(instance_name: IPHI_DATABASE_INSTANCE_NAME)
    dbi_lvc = Heal::DatabaseInstance.find_by(instance_name: LVC_DATABASE_INSTANCE_NAME)

    dbis = [dbi_ccpha, dbi_iphi, dbi_lvc]

    dbis.each do |dbi|
      city_designations_added = 0
      error_count = 0
      dbi.cities.where.not(city_designation: nil).each do |city|

        if city.city_designation_achievements.count == 0
          #there aren't any city designations saved yet.
          cda = Heal::CityDesignationAchievement.new
          cda.city = city
          cda.city_designation = city.city_designation
          if cda.save
            city_designations_added += 1
          else
            error_count += 1
            puts cda.errors.inspect
          end
        end
      end

      puts "Added city designation information to #{city_designations_added} cities in the #{dbi.instance_name} database. There were #{error_count} errors."
    end
  end

end
