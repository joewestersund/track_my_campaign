module ApplicationHelper
  def full_title(page_title)
    base_title = "Spending Tracker"
    if(page_title.empty?)
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  def swap_and_save(first, second)
    if first.order_in_list > second.order_in_list
      first.order_in_list = second.order_in_list
      second.order_in_list = first.order_in_list + 1 #if there's space in between due to deletions, move up
    else
      second.order_in_list = first.order_in_list
      first.order_in_list = second.order_in_list + 1 #if there's space in between due to deletions, move up
    end
    first.save
    second.save
  end

  def show_boolean(bool_variable)
    return "Yes" if bool_variable
    "No"
  end

  def nil_to_zero(variable)
    return variable if variable.present?
    0
  end

  def show_comma_separated_list(array, measure_word, max_to_show = 2)
    if array.nil? or array.empty?
      nil
    elsif array.count > max_to_show
      return "#{array.count} #{measure_word}"
    else
      return array.map{ |u| u.name }.join(", ")
    end
  end

end
