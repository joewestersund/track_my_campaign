module UsersHelper
  def show_users_list(users_array, max_to_show = 2)
    if users_array.nil? or users_array.empty?
      nil
    elsif users_array.count > max_to_show
      return "#{users_array.count} users"
    else
      return users_array.map{ |u| "#{u.first_name} #{u.last_name}" }.join(", ")
    end
  end
end
