class SearchFilter
  class OperatorNotRecognizedError < StandardError
  end

  def operator_is_supported(operator)
    #ILIKE is a case-insensitive like operator supported in postgresql.
    if not ['=', '<', '<=', '>=', 'LIKE', 'ILIKE'].include? operator
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

    if options[:ignore_if_null].nil?
      ignore_if_null = true
    else
      ignore_if_null = options[:ignore_if_null]
    end

    if options[:is_null]
      @conditions_string << "#{db_field_name} IS NULL"
    elsif options[:is_not_null]
      @conditions_string << "#{db_field_name} IS NOT NULL"
    elsif params_hash[param_name].present? && operator_is_supported(operator)
      if options[:join_table].present?
        join_object_name = options[:join_object_name] || options[:join_table]
        @join_tables << options[:join_table] unless @join_tables.include? options[:join_table]
        @conditions_string << "#{join_object_name}.#{db_field_name} #{operator} :#{param_name}"
      else
        @conditions_string << "#{db_field_name} #{operator} :#{param_name}"
      end
      if operator == "LIKE" || operator == "ILIKE"
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