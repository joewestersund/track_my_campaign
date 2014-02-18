class ModifyContactsTable < ActiveRecord::Migration
  def change
    remove_column :contacts, :city_id
    rename_column :contacts, :phone_number, :office_phone_number
    add_column :contacts, :cell_phone_number, :string, after: :office_phone_number
    add_column :contacts, :fax, :string, after: :cell_phone_number

  end
end
