class ChangeDatabaseInstanceToHaveType < ActiveRecord::Migration
  def change
    add_column :database_instances, :type, :string
    remove_column :database_instances, :database_type_id
  end
end
