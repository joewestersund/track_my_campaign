class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.integer :database_instance_id
      t.string :name
      t.string :county
      t.string :state
      t.integer :jurisdiction_type_id
      t.integer :league_division_id
      t.integer :population
      t.boolean :kp_service_area
      t.boolean :under_resourced_or_disease_burden
      t.decimal :state_median_income
      t.decimal :city_median_income
      t.integer :HEAL_city_designation_id

      t.timestamps
    end
  end
end
