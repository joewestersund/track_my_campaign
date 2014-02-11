json.array!(@jurisdiction_types) do |jurisdiction_type|
  json.extract! jurisdiction_type, :id, :database_instance_id, :name, :order_in_list
  json.url jurisdiction_type_url(jurisdiction_type, format: :json)
end
