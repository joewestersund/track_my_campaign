class CreateUserPermissions < ActiveRecord::Migration
  def change
    create_table :user_permissions do |t|
      t.integer :database_instance_id
      t.integer :user_id
      t.boolean :read_only

      t.timestamps
    end
  end
end
