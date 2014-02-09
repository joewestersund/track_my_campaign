json.array!(@contact_interest_levels) do |contact_interest_level|
  json.extract! contact_interest_level, :id, :database_instance_id, :name, :order_in_list
  json.url contact_interest_level_url(contact_interest_level, format: :json)
end
