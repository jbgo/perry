module Perry::QueryMethods
  # TRP: Define each of the variables the query options will be stored in.
  attr_accessor :select_values, :group_values, :order_values, :joins_values, :includes_values, :where_values, :having_values,
                :limit_value, :offset_value, :from_value,
                :raw_sql_value, :fresh_value

  def select(*args)
    if block_given?
      to_a.select {|*block_args| yield(*block_args) }
    else
      clone.tap { |r| r.select_values += args if args_valid? args }
    end
  end

  def group(*args)
    clone.tap { |r| r.group_values += args if args_valid? args }
  end

  def order(*args)
    clone.tap { |r| r.order_values += args if args_valid? args }
  end

  def joins(*args)
    clone.tap { |r| r.joins_values += args if args_valid?(args) }
  end

  def includes(*args)
    args.reject! { |a| a.nil? }
    clone.tap { |r| r.includes_values += (r.includes_values + args).flatten.uniq if args_valid? args }
  end

  def where(*args)
    clone.tap { |r| r.where_values += args.compact.select { |i| args_valid? i } if args_valid? args }
  end

  def having(*args)
    clone.tap { |r| r.having_values += args if args_valid? args }
  end

  def limit(value = true)
    clone.tap { |r| r.limit_value = value }
  end

  def offset(value = true)
    clone.tap { |r| r.offset_value = value }
  end

  def from(table)
    clone.tap { |r| r.from_value = table }
  end

  def fresh(val=true)
    clone.tap do |r|
      r.fresh_value = val
      r.reset_queries if r.fresh_value
    end
  end

  def sql(raw_sql)
    clone.tap { |r| r.raw_sql_value = raw_sql }
  end

  protected

  def args_valid?(args)
    args.respond_to?(:empty?) ? !args.empty? : !!args
  end

end