json.array!(@position_types) do |position_type|
  json.extract! position_type, :id, :database_instance_id, :name, :order_in_list
  json.url position_type_url(position_type, format: :json)
end
