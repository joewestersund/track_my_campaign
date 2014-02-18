class RenameCitiesCityDesignation < ActiveRecord::Migration
  def change
    rename_column :cities, :HEAL_city_designation_id, :city_designation_id
  end
end
