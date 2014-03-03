namespace :heal do

  desc "set up default HEAL databases"
  task setup: :environment do
    dbi_iphi = Heal::DatabaseInstance.find_by(instance_name: 'IPHI-test')
    dbi_ccphi = Heal::DatabaseInstance.find_by(instance_name: 'CCPHA-test')

    [dbi_iphi, dbi_ccphi].each do |dbi|
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

      Heal::JurisdictionType.create({database_instance: dbi, name: 'City', order_in_list: 1})
      Heal::JurisdictionType.create({database_instance: dbi, name: 'County', order_in_list: 2})
      Heal::JurisdictionType.create({database_instance: dbi, name: 'State', order_in_list: 3})

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

    Heal::CityDesignation.create({database_instance: dbi_ccphi, name: "Eager", order_in_list: 1})
    Heal::CityDesignation.create({database_instance: dbi_ccphi, name: "Active", order_in_list: 2})
    Heal::CityDesignation.create({database_instance: dbi_ccphi, name: "Fit", order_in_list: 3})

  end

end
