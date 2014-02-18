class AddOrganizationTypeToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :organization_type_id, :integer, after: :organization_name
  end
end
