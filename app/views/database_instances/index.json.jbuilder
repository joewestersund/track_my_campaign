json.array!(@database_instances) do |database_instance|
  json.extract! database_instance, :id, :organization_id, :database_type_id
  json.url database_instance_url(database_instance, format: :json)
end
