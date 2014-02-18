json.array!(@milestone_achievements) do |milestone_achievement|
  json.extract! milestone_achievement, :id, :database_instance_id, :milestone_id, :city_id, :status_type_id, :completion_date, :notes, :user_id
  json.url milestone_achievement_url(milestone_achievement, format: :json)
end
