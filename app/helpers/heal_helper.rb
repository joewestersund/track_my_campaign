module HealHelper
  NONE_OF_THE_ABOVE_VALUE_IN_DROPDOWN = "0"

  def show_cities_list(cities_array, options = {})
    show_state = options[:show_state] || false
    show_jurisdiction_type = options[:show_jurisdiction_type] || false
    show_all = options[:show_all] || false
    max_to_show = options[:max_to_show] || 5
    if cities_array.nil? || cities_array.empty?
      return nil
    elsif !show_all && cities_array.count > max_to_show
      return "#{cities_array.count} cities"
    elsif show_state && show_jurisdiction_type
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

  def show_city_designation_achievement(cda, options = {})
    if cda.present?
      if cda.date.present?
        if options[:no_html] == true
          return "#{cda.city_designation.name} #{cda.date.year}"
        else
          return link_to "#{cda.city_designation.name} #{cda.date.year}", edit_heal_city_designation_achievement_path(cda), title: "#{cda.date}\n#{cda.notes}"
        end
      else
        if options[:no_html] == true
          return "#{cda.city_designation.name}"
        else
          return link_to "#{cda.city_designation.name}", edit_heal_city_designation_achievement_path(cda), title: cda.notes
        end
      end
    end
  end

  def show_city_designation_achievements_list(city, options = {})
    cda_array = city.city_designations_achievements_in_order
    if cda_array.nil? || cda_array.empty?
      return ""
    else
      cda_string = ""
      first_item = true
      cda_array.each do |cda|
        if options[:no_html] == true
          cda_string += "#{show_city_designation_achievement(cda, options)}\n"
        else
          cda_string += "<div#{" class=bold" if first_item}>#{show_city_designation_achievement(cda, options)}</div>"
        end
        first_item = false
      end
      return raw(cda_string)
    end
  end

  def show_policies_list(policies_array, show_all = false)
    show_comma_separated_list(policies_array, "policies", {show_all: show_all})
  end

  def show_comma_separated_list(array, measure_word, options = {})
    show_all = options[:show_all] || false
    max_to_show = options[:max_to_show] || 2
    conjunction = options[:conjunction] || ""
    if array.nil? || array.empty?
      nil
    elsif !show_all && array.count > max_to_show
      return "#{array.count} #{measure_word}"
    else
      if conjunction == "" || array.length == 1
        return array.map{ |u| u.name }.join(", ")
      else
        last_item = array.last
        return array[0,array.length-1].map{ |u| u.name }.join(", ") + " #{conjunction} #{last_item.name}"
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
      return get_city_designation_class_by_number(cd.city_designation.order_in_list)
    end
  end

  def get_city_designation_class_by_number(order_in_list)
    return "city-designation-#{order_in_list}"
  end

  def truncate_text(text, options = {})
    max_length = options[:max_length] || 30
    truncate(text, length: max_length, separator: ' ')
  end

  def contact_fields_and_descriptions
    field_names = []
    field_names << {name: "honorific", data_type: show_comma_separated_list(@honorifics,"",{show_all: true, conjunction: "or"}) }
    field_names << {name: "first_name", data_type: "text" }
    field_names << {name: "last_name", data_type: "text" }
    field_names << {name: "title", data_type: "text" }
    field_names << {name: "organization_name", data_type: "text" }
    field_names << {name: "organization_type", data_type: show_comma_separated_list(@organization_types,"",{show_all: true, conjunction: "or"}) }
    field_names << {name: "cities", data_type: "Comma-separated list of zero or more cities, with state. Example: Portland OR, Sacramento CA" }
    field_names << {name: "interest_level", data_type: show_comma_separated_list(@interest_levels,"",{show_all: true, conjunction: "or"}) }
    field_names << {name: "position_type", data_type: show_comma_separated_list(@position_types,"",{show_all: true, conjunction: "or"}) }
    field_names << {name: "office_phone_number", data_type: "text" }
    field_names << {name: "email", data_type: "text" }
    field_names << {name: "cell_phone_number", data_type: "text" }
    field_names << {name: "fax", data_type: "text" }
    field_names << {name: "website", data_type: "text" }
    field_names << {name: "address_line_1", data_type: "text" }
    field_names << {name: "address_line_2", data_type: "text" }
    field_names << {name: "address_city", data_type: "text" }
    field_names << {name: "address_state", data_type: "text" }
    field_names << {name: "address_zip", data_type: "text" }
    field_names << {name: "heal_champion", data_type: "TRUE or FALSE" }
    field_names << {name: "heal_champion_notes", data_type: "text" }
    field_names << {name: "notes", data_type: "text" }
  end

  def replace_newline_with_breaks(text)
    raw(text.gsub("\n","<br>"))
  end
end
