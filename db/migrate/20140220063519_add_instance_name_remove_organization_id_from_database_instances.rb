class AddInstanceNameRemoveOrganizationIdFromDatabaseInstances < ActiveRecord::Migration
  def change
    remove_column :database_instances, :organization_id
    add_column :database_instances, :name, :string
    drop_table :organizations
  end
end
