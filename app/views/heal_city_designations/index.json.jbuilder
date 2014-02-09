json.array!(@heal_city_designations) do |heal_city_designation|
  json.extract! heal_city_designation, :id, :database_instance_id, :name, :order_in_list
  json.url heal_city_designation_url(heal_city_designation, format: :json)
end
