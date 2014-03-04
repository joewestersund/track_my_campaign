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
    @join_tables = []
  end

  def add_condition(db_field_name, operator, param_name, params_hash, options = {} )

    if options[:ignore_if_null].present?
    ignore_if_null = options[:ignore_if_null]
    else
      ignore_if_null = true
    end

    if params_hash[param_name].present? and operator_is_supported(operator)
      if options[:join_table].present?
        join_object_name = options[:join_object_name] || options[:join_table]
        @join_tables << options[:join_table] unless @join_tables.include? options[:join_table]
        @conditions_string << "#{join_object_name}.#{db_field_name} #{operator} :#{param_name}"
      else
        @conditions_string << "#{db_field_name} #{operator} :#{param_name}"
      end
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
    if @join_tables.empty?
      return [@conditions_string.join(" AND "), @parameters_hash]
    else
      return [@conditions_string.join(" AND "), @parameters_hash, @join_tables]
    end
  end

end