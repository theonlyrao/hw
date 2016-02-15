require 'pry'

data = [
  ['Grace', 23],
  ['Stacy', 15],
  ['Z', 32],
  ['Dom', 32],
  ['Steve', 24],
  ['A', 24]
]

hash = Hash.new

# swapping name and age to make it easy to sort by age
data_swapped = data.map do |person|
  [person[1], person[0]]
end

data_sorted = data_swapped.sort

@iteration_counter = 0
data_sorted.map do |person|
  if @iteration_counter == 0
    # just starting hash when theres nothing to compare
    hash[person[0]] = person[1]
    p person
    p "making hash"
  else
    if person[0] == data_sorted[@iteration_counter - 1][0]
      # if the current person's age is equal to the age of the person who just passed through the block...
      p person
      p "in if"
      # then we want to tack the current person's name into the value of the key-value pair of the previous person
      hash[person[0]] = hash[person[0]] + ", #{person[1]}"
    else
      p person
      p "we're in the else block"
      hash[person[0]] = person[1]
    end
  end
@iteration_counter += 1
end


p data_sorted
p hash
