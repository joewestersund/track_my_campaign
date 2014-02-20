class DropDatabaseInstancesUsers < ActiveRecord::Migration
  def change
    drop_table :database_instances_users
  end
end
