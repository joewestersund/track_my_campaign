class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.integer :database_instance_id
      t.string :name
      t.integer :order_in_list

      t.timestamps
    end
  end
end
