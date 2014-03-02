module UsersHelper
  def show_users_list(users_array, options = {})
    show_people_list(users_array, "users", options)
  end

  def show_people_list(people_array, measure_word, options = {})
    max_to_show = options[:max_to_show] || 2
    show_all = options[:show_all] || false
    if people_array.nil? or people_array.empty?
      nil
    elsif !show_all and people_array.count > max_to_show
      return "#{people_array.count} #{measure_word}"
    else
      return people_array.map{ |u| "#{u.first_name} #{u.last_name}" }.join(", ")
    end
  end
end
