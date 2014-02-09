json.array!(@communication_types) do |communication_type|
  json.extract! communication_type, :id, :database_instance_id, :name, :order_in_list
  json.url communication_type_url(communication_type, format: :json)
end
