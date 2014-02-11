json.array!(@communications) do |communication|
  json.extract! communication, :id, :database_instance_id, :date, :duration_minutes, :communication_type_id, :event_name, :contact_interest_level_id, :notes
  json.url communication_url(communication, format: :json)
end
