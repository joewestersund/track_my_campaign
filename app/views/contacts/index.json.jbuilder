json.array!(@contacts) do |contact|
  json.extract! contact, :id, :database_instance_id, :first_name, :last_name, :title, :city_id, :organization_name, :phone_number, :email, :address_line_1, :address_line_2, :address_city, :address_state, :address_zip, :interest_level_id, :HEAL_champion, :HEAL_champion_notes, :position_type_id, :notes
  json.url contact_url(contact, format: :json)
end
