json.array!(@city_designations) do |city_designation|
  json.extract! city_designation, :id, :database_instance_id, :name, :order_in_list
  json.url city_designation_url(city_designation, format: :json)
end
