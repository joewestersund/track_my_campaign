json.array!(@league_divisions) do |league_division|
  json.extract! league_division, :id, :database_instance_id, :name, :order_in_list
  json.url league_division_url(league_division, format: :json)
end
