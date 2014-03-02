module HealHelper
  def show_cities_list(cities_array, options = {})
    show_state = options[:show_state] || false
    show_jurisdiction_type = options[:show_jurisdiction_type] || false
    show_all = options[:show_all] || false
    max_to_show = options[:max_to_show] || 2
    if cities_array.nil? or cities_array.empty?
      return nil
    elsif !show_all and cities_array.count > max_to_show
      return "#{cities_array.count} cities"
    elsif show_state and show_jurisdiction_type
      return cities_array.map{ |c| c.name_type_state }.join(", ")
    elsif show_state
      return cities_array.map{ |c| c.name_and_state }.join(", ")
    else
      return cities_array.map{ |c| c.name }.join(", ")
    end
  end

  def show_contacts_list(contacts_array, options = {})
    show_people_list(contacts_array, "contacts", options)
  end

  def show_policies_list(policies_array, show_all = false)
    show_comma_separated_list(policies_array, "policies", {show_all: show_all})
  end

  def show_comma_separated_list(array, measure_word, options = {})
    show_all = options[:show_all] || false
    max_to_show = options[:max_to_show] || 2
    if array.nil? or array.empty?
      nil
    elsif !show_all and array.count > max_to_show
      return "#{array.count} #{measure_word}"
    else
      return array.map{ |u| u.name }.join(", ")
    end
  end

  def page_size
    20
  end

end
