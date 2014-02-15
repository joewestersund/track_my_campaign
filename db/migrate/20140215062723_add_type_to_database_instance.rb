class AddTypeToDatabaseInstance < ActiveRecord::Migration
  def change
    rename_column :database_types, :internal_name, :type
  end
end
