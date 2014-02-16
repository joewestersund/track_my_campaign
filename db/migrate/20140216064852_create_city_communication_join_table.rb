class CreateCityCommunicationJoinTable < ActiveRecord::Migration
  def self.up
    create_table :cities_communications, :id => false do |t|
      t.integer :city_id
      t.integer :communication_id
    end
  end

  def self.down
    drop_table :cities_communications
  end
end
