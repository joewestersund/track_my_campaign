class SearchFilter
  class OperatorNotRecognizedError < StandardError
  end

  def operator_is_supported(operator)
    if not ['=', '<', '<=', '>=', 'LIKE'].include? operator
      raise OperatorNotRecognizedError
    end
    return true
  end

  def initialize
    @conditions_string = []
    @parameters_hash = {}
  end

  def add_condition(db_field_name, operator, param_name, params_hash, options = {} )

    if options[:ignore_if_null].present?
    ignore_if_null = options[:ignore_if_null]
    else
      ignore_if_null = true
    end

    if params_hash[param_name].present? and operator_is_supported(operator)
      @conditions_string << "#{db_field_name} #{operator} :#{param_name}"
      if operator == "LIKE"
        @parameters_hash[param_name] = "%#{params_hash[param_name]}%"
      else
        @parameters_hash[param_name] = params_hash[param_name]
      end
    elsif !ignore_if_null
      @conditions_string << "#{db_field_name} IS NULL"
    end

  end

  def get_search_filter
    return [@conditions_string.join(" AND "), @parameters_hash]
  end

end