json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :database_instance_id, :name, :order_in_list
  json.url milestone_url(milestone, format: :json)
end
