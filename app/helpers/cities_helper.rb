module CitiesHelper
  def show_cities_list(cities_array, show_state = false)
    if cities_array.nil? or cities_array.empty?
      return nil
    elsif show_state
      return cities_array.map{ |c| "#{c.name} #{c.state}" }.join(", ")
    else
      return cities_array.map{ |c| c.name }.join(", ")
    end
  end
end
