json.array!(@resolutions) do |resolution|
  json.extract! resolution, :id, :database_instance_id, :date, :city_id, :prior_to_joining_campaign, :notes
  json.url resolution_url(resolution, format: :json)
end
