class CreateDatabaseInstances < ActiveRecord::Migration
  def change
    create_table :database_instances do |t|
      t.integer :organization_id
      t.integer :database_type_id

      t.timestamps
    end
  end
end
