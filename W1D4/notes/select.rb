def select(collection)
  filtered = []
  collection.each do |item|
    if yield(item)
      filtered << item
    end
  end

  filtered
end

names = ['steve', 'sam', 'fabio']

filtered_names = select(names) do |name|
  name =~ /^s/
end

puts filtered_names