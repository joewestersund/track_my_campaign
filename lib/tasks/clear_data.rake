namespace :heal_ccpha do

  desc "clear CCPHA contacts data"
  task clear_ccpha_contacts: :environment do

    dbi_ccpha = Heal::DatabaseInstance.find_by(instance_name: "CCPHA")

    if dbi_ccpha.present?
      puts "deleting #{dbi_ccpha.contacts.count} CCPHA contacts"

      #have to delete through SQL because Rails 4.0 has bug on dependent deletes (?)
      sql = "DELETE * FROM cities_contacts WHERE contact_id IN (SELECT id from contacts WHERE database_instance_id = #{dbi_ccpha.id})"
      ActiveRecord::Base.connection.execute(sql)

      puts "CCPHA contacts count: #{dbi_ccpha.contacts.count} "
    end

  end

end

