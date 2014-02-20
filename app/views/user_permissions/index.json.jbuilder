json.array!(@user_permissions) do |user_permission|
  json.extract! user_permission, :id, :database_instance_id, :user_id, :read_only
  json.url user_permission_url(user_permission, format: :json)
end
