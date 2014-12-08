module HealHelper
  NONE_OF_THE_ABOVE_VALUE_IN_DROPDOWN = "0"

  def show_cities_list(cities_array, options = {})
    show_state = options[:show_state] || false
    show_jurisdiction_type = options[:show_jurisdiction_type] || false
    show_all = options[:show_all] || false
    max_to_show = options[:max_to_show] || 5
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

  def show_city_designation_achievement(cda)
    if cda.present?
      if cda.date.present?
        return link_to "#{cda.city_designation.name} #{cda.date.year}", edit_heal_city_designation_achievement_path(cda), title: cda.notes
      else
        return link_to "#{cda.city_designation.name}", edit_heal_city_designation_achievement_path(cda), title: cda.notes
      end
    end
  end

  def show_city_designation_achievements_list(city, options = {})
    cda_array = city.city_designations_achievements_in_order
    if cda_array.nil? or cda_array.empty?
      return ""
    else
      cda_string = ""
      first_item = true
      cda_array.each do |cda|
        cda_string += "<div#{" class=bold" if first_item}>#{show_city_designation_achievement(cda)}</div>"
        first_item = false
      end
      return raw(cda_string)
      #return raw(cda_array.map{ |cda| "<div>#{show_city_designation_achievement(cda)}</div>" }.join)
    end
  end

  def show_policies_list(policies_array, show_all = false)
    show_comma_separated_list(policies_array, "policies", {show_all: show_all})
  end

  def show_comma_separated_list(array, measure_word, options = {})
    show_all = options[:show_all] || false
    max_to_show = options[:max_to_show] || 2
    conjunction = options[:conjunction] || ""
    if array.nil? or array.empty?
      nil
    elsif !show_all and array.count > max_to_show
      return "#{array.count} #{measure_word}"
    else
      if conjunction == "" or array.count == 1
        return array.map{ |u| u.name }.join(", ")
      else
        last_item = array.pop
        return array.map{ |u| u.name }.join(", ") + " #{conjunction} #{last_item.name}"
      end
    end
  end

  def page_size
    10
  end

  def get_yes_no_options_list
    return [["Yes", 1], ["No", 0]]
  end

  def get_name(attribute_name)
    attribute_name.name if attribute_name.present?
  end

  def show_percentage(percentage)
    if percentage.nil?
      nil
    elsif percentage >= 10
      number_to_percentage(percentage,precision:0)
    elsif percentage >= 1
      number_to_percentage(percentage,precision:1)
    elsif percentage >= 0.1
      number_to_percentage(percentage,precision:2)
    else
      number_to_percentage(percentage,precision:3)
    end
  end

  def get_city_designation_class(city)
    cd = city.current_designation
    if cd.nil?
      return ""
    else
      return "city-designation-#{cd.city_designation.order_in_list}"
    end
  end

  def truncate_text(text, options = {})
    max_length = options[:max_length] || 30
    truncate(text, length: max_length, separator: ' ')
  end

end
