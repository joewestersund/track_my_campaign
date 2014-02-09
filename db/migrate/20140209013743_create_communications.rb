class CreateCommunications < ActiveRecord::Migration
  def change
    create_table :communications do |t|
      t.integer :database_instance_id
      t.date :date
      t.integer :duration_minutes
      t.integer :communication_type_id
      t.string :event_name
      t.integer :contact_interest_level_id
      t.text :notes

      t.timestamps
    end
  end
end
