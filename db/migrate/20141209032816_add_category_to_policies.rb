class AddCategoryToPolicies < ActiveRecord::Migration
  def change
    add_column :policies, :category, :string, after: :database_instance_id
    add_column :policies, :subcategory, :string, after: :category
  end
end
