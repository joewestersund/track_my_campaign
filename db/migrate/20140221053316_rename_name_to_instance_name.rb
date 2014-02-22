class RenameNameToInstanceName < ActiveRecord::Migration
  def change
    rename_column :database_instances, :name, :instance_name
  end
end
