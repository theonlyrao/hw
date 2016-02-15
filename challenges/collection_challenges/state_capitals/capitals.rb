require 'pry'

@states = {"Oregon" => "OR",
          "Alabama" => "AL",
          "New Jersey" => "NJ",
          "Colorado" => "CO"}

@capitals = {"OR" => "Salem",
            "AL" => "Montgomery",
            "NJ" => "Trenton",
            "CO" => "Denver"}

def what_is_capital(state)
  if @states.keys.include?(state)
    abbreviation = @states[state]
    @capitals[abbreviation]
  else
    "That state is unknown."
  end
end

def what_is_state(capital)
  if @capitals.values.include?(capital)
    abbreviation = @capitals.key(capital)
    @states.key(abbreviation)
  else
    "That capital is unknown."
  end
end

def merge_hashes
  @joint_hash = Hash.new
  @states.keys.each do |state|
    @state_abbreviation = @states[state]
    p "state_abbreviation = #{@state_abbreviation}"
    @capital = @capitals[@state_abbreviation]
    p "capital = #{@capital}"
    @joint_hash["state"] = @capital
  end
end

def joint_hash
  @joint_hash
end

# binding.pry

p merge_hashes
p @joint_hash["Oregon"]
