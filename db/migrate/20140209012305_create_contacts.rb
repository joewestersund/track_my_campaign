class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :database_instance_id
      t.string :first_name
      t.string :last_name
      t.string :title
      t.integer :city_id
      t.string :organization_name
      t.string :phone_number
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_city
      t.string :address_state
      t.string :address_zip
      t.integer :interest_level_id
      t.boolean :HEAL_champion
      t.text :HEAL_champion_notes
      t.integer :position_type_id
      t.text :notes

      t.timestamps
    end
  end
end
