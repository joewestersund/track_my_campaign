namespace :clear_data do
  CCPHA_DATABASE_INSTANCE_NAME = "CCPHA"

  desc "clear out the user data"
  task clear_ccpha_contacts: :environment do

    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: CCPHA_DATABASE_INSTANCE_NAME)

    dbi_ccpha.contacts.destroy_all

  end

end