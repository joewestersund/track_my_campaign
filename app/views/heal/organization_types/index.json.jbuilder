json.array!(@organization_types) do |organization_type|
  json.extract! organization_type, :id, :database_instance_id, :name, :order_in_list
  json.url organization_type_url(organization_type, format: :json)
end
