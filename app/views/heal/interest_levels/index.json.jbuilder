json.array!(@interest_levels) do |interest_level|
  json.extract! interest_level, :id, :database_instance_id, :name, :order_in_list
  json.url interest_level_url(interest_level, format: :json)
end
