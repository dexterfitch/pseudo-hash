class MyHash

  define_method(:initialize) do
    @pets = []
  end

  define_method(:store) do |key, value|
    @key = key
    @value = value
    @pets.push(@key)
    @pets.push(@value)
  end

  define_method(:fetch_value) do |key|
    if @pets.include?(key)
      value = ((@pets.index(key)) + 1)
      return @pets[value]
    else
      return "Sorry, that wasn't found!"
    end
  end

  define_method(:fetch_key) do |value|
    if @pets.include?(value)
      key = ((@pets.index(value)) - 1)
      return @pets[key]
    else
      return "Sorry, that wasn't found!"
    end
  end

  define_method(:keys) do
    return @pets.values_at(* @pets.each_index.select {|each| each.even?})
  end

  define_method(:values) do
    return @pets.values_at(* @pets.each_index.select {|each| each.odd?})
  end

  define_method(:merge) do |hash2|
    return @pets + hash2.keys() + hash2.values()
  end

end
