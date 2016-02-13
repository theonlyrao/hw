data = [
  ['Frank', 33],
  ['Stacy', 15],
  ['Juan', 24],
  ['Dom', 32],
  ['Steve', 24],
  ['Jill', 24]
]

hash = Hash.new

data.each do |name, age|
  hash[name] = age
end

sorted_key_array = hash.values.sort

sorted_name_array = sorted_key_array.map do |value|
  hash.key(value)
end

sorted = sorted_name_array.map do |name|
  "#{name} (#{hash[name]})"
end

p sorted_key_array
p sorted_name_array
p sorted
