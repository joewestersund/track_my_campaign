class AddInternalNameToDatabaseTypes < ActiveRecord::Migration
  def change
    add_column :database_types, :internal_name, :string
  end
end
