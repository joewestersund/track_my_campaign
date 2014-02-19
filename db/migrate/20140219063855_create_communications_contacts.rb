class CreateCommunicationsContacts < ActiveRecord::Migration
  def self.up
    create_table :communications_contacts, :id => false do |t|
      t.integer :communication_id
      t.integer :contact_id
    end
  end

  def self.down
    drop_table :communications_contacts
  end
end
