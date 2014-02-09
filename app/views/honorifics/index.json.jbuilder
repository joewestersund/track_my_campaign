json.array!(@honorifics) do |honorific|
  json.extract! honorific, :id, :database_instance_id, :name, :order_in_list
  json.url honorific_url(honorific, format: :json)
end
