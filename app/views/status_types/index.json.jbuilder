json.array!(@status_types) do |status_type|
  json.extract! status_type, :id, :database_instance_id, :name, :order_in_list
  json.url status_type_url(status_type, format: :json)
end
