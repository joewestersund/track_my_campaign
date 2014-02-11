class CreateResolutions < ActiveRecord::Migration
  def change
    create_table :resolutions do |t|
      t.integer :database_instance_id
      t.date :date
      t.integer :city_id
      t.boolean :prior_to_joining_campaign
      t.text :notes

      t.timestamps
    end
  end
end
