json.array!(@milestone_reacheds) do |milestone_reached|
  json.extract! milestone_reached, :id, :database_instance_id, :milestone_id, :city_id, :status_type_id, :completion_date, :notes, :user_id
  json.url milestone_reached_url(milestone_reached, format: :json)
end
