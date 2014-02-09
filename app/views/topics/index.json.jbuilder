json.array!(@topics) do |topic|
  json.extract! topic, :id, :database_instance_id, :name, :order_in_list
  json.url topic_url(topic, format: :json)
end
