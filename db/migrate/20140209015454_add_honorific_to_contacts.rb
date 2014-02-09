class AddHonorificToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :honorific_id, :integer
  end
end
