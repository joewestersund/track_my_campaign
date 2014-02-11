json.array!(@heal_policies) do |heal_policy|
  json.extract! heal_policy, :id, :database_instance_id, :name, :order_in_list
  json.url heal_policy_url(heal_policy, format: :json)
end
