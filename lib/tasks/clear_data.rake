namespace :clear_data do
  desc "clear out the user data"
  task clear_heal_data: :environment do
    Heal::Communication.destroy_all
    Heal::Contact.destroy_all
    Heal::City.destroy_all

  end

end