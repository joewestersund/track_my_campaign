json.array!(@cities) do |city|
  json.extract! city, :id, :database_instance_id, :name, :county, :state, :jurisdiction_type_id, :league_division_id, :population, :kp_service_area, :under_resourced_or_disease_burden, :state_median_income, :city_median_income, :HEAL_city_designation_id
  json.url city_url(city, format: :json)
end
