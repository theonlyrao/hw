require 'pry'
require 'csv'

# open the CSV and build the headers
registration = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

# make array containing just the hours of registration
times_and_dates = registration.map do |row|
  row[:regdate]
end

hours = times_and_dates.map do |element|
  element.split.last.rjust(5,"0")[0..1]
end

# make array containing the day of the week of registration
days = times_and_dates.map do |element|
  element.split.first
end

# write the method that takes an array and creates a hash with count of
# number of times that the value appears

hours_hash = Hash.new
hours.each do |hour|
  if hours_hash.keys.none? { |key| key == hour }
    hours_hash[hour] = 1
  else
    hours_hash[hour] += 1
  end
end

most_occurences = hours_hash.values.max

popular_times = []
hours_hash.each do |key, value|
  if value == most_occurences
    popular_times << key
  end
end

# run method on each of the arrays
