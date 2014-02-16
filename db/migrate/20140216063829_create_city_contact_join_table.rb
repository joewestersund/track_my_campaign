class CreateCityContactJoinTable < ActiveRecord::Migration
  def self.up
    create_table :cities_contacts, :id => false do |t|
      t.integer :city_id
      t.integer :contact_id
    end
  end

  def self.down
    drop_table :cities_contacts
  end
end
