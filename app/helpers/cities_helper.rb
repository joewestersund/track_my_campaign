module CitiesHelper
  def show_cities_list(cities_array, show_state = false, show_jurisdiction_type = false)
    if cities_array.nil? or cities_array.empty?
      return nil
    elsif show_state and show_jurisdiction_type
      return cities_array.map{ |c| c.name_type_state }.join(", ")
    elsif show_state
      return cities_array.map{ |c| c.name_and_state }.join(", ")
    else
      return cities_array.map{ |c| c.name }.join(", ")
    end
  end
end
