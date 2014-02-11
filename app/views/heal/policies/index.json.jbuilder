json.array!(@policies) do |policy|
  json.extract! policy, :id, :database_instance_id, :name, :order_in_list
  json.url policy_url(policy, format: :json)
end
