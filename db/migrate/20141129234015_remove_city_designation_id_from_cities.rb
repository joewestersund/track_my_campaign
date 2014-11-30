class RemoveCityDesignationIdFromCities < ActiveRecord::Migration
  def change
    remove_column :cities, :city_designation_id, :integer
  end
end
