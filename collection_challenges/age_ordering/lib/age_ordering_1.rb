require 'pry'

class Age

  def initialize
    @data = [
      ['Frank', 33],
      ['Stacy', 15],
      ['Juan', 24],
      ['Dom', 32],
      ['Steve', 24],
      ['Jill', 24]
    ]
  end

  # def order_names_by_age
  #   mid_step = @data.map do |person|
  #     copy_age = person[1]
  #     person.insert(0, copy_age)
  #   end.sort
  #
  #   sorted_names = mid_step.map do |person|
  #     person[1]
  #   end
  #
  #   return sorted_names
  #
  # end
  #
  # def order_names_by_age_with_age
  #   mid_step_1 = @data.map do |person|
  #     copy_age_1 = person[1]
  #     person.insert(0, copy_age_1)
  #   end.sort
  #
  #   sorted_names_1 = mid_step_1.map do |person|
  #     person[1..2]
  #   end
  #
  #   return sorted_names_1
  # end

  def order_names_by_age_with_age_then_alpha
    mid_step = @data.map do |person|
      copy_age = person[1]
      person.insert(0, copy_age)
    end.sort
  end

  def sort_array_with_three_values_based_on_alpha_of_middle_value(arg)
    @sorted_by_alpha = arg.sort_by do |person|
      person[0]
    end
  end

  def turn_data_into_a_hash
    @hash = Hash.new

    @data.each do |name, age|
      @hash[name] = age
    end

    @hash
  end

  def build_hash
  end

end

test = Age.new
pp test.turn_data_into_a_hash
