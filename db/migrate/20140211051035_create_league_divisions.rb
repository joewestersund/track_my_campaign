class CreateLeagueDivisions < ActiveRecord::Migration
  def change
    create_table :league_divisions do |t|
      t.integer :database_instance_id
      t.string :name
      t.integer :order_in_list

      t.timestamps
    end
  end
end
