json.array!(@city_designation_achievements) do |city_designation_achievement|
  json.extract! city_designation_achievement, :id, :database_instance_id, :date, :city_id, :city_designation_id, :notes
  json.url city_designation_achievement_url(city_designation_achievement, format: :json)
end
