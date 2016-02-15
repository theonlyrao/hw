@scores = {
  "A"=>1, "B"=>3, "C"=>3, "D"=>2,
  "E"=>1, "F"=>4, "G"=>2, "H"=>4,
  "I"=>1, "J"=>8, "K"=>5, "L"=>1,
  "M"=>3, "N"=>1, "O"=>1, "P"=>3,
  "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
  "U"=>1, "V"=>4, "W"=>4, "X"=>8,
  "Y"=>4, "Z"=>10
}

def score_is(word)
  turn_word_into_array(word)
  p "#{word} has the total score #{@total}"
end

def turn_word_into_array(word)
  @array = word.upcase.chars
  score(@array)
end

def score(array)
  @letter_scores = array.map do |char|
    s = @scores[char]
  end
  reduce_scores(@letter_scores)
end

def reduce_scores(letter_scores)
  @total = letter_scores.reduce(:+)
end

word = "quickly"

score_is(word)
