json.array!(@database_types) do |database_type|
  json.extract! database_type, :id, :name
  json.url database_type_url(database_type, format: :json)
end
