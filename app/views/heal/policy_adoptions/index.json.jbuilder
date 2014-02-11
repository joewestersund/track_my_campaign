json.array!(@policy_adoptions) do |policy_adoption|
  json.extract! policy_adoption, :id, :database_instance_id, :date, :city_id, :prior_to_joining_campaign, :notes
  json.url policy_adoption_url(policy_adoption, format: :json)
end
