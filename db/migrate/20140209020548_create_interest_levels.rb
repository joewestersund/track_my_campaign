class CreateInterestLevels < ActiveRecord::Migration
  def change
    create_table :interest_levels do |t|
      t.integer :database_instance_id
      t.string :name
      t.integer :order_in_list

      t.timestamps
    end
  end
end
