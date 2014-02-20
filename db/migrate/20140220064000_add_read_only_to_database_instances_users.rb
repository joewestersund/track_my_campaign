class AddReadOnlyToDatabaseInstancesUsers < ActiveRecord::Migration
  def change
    add_column :database_instances_users, :read_only, :boolean
  end
end
