class NightWriter

  def initialize
    input_file = ARGV[0]
    output_file = ARGV[1]
    @input = File.read(input_file)
    send_to_translate(@input)
    File.write(output_file, @output_text)
  end

  def send_to_translate(input)
    # take input file and break it into an array of characters
    @english_array = input.chomp.chars # ASK IF INPUT WILL HAVE NEWLINES
    # take each element of the array and then translate it
    translate(@english_array)
    # when finished, p message indicating message is translated
    p "Message has been translated into Braille. Please see output file."
  end

  def translate(array)
    @array_index_counter = 0
    @braille_array = array.map do |char|

    # identify if we're translating a number
    # if so
      # then find the next space and let n equal how many letter away the space is
      # then first ouput the # braille letter
      # then translate the next n arrays as their braille equivalent
      if char # need a regex for is a number
        # put it into an array
        array_of_numbers_for_tranlsating = [char]
        # then check the next value and if it is num put it into array
        # keep going until we hit a space
        while array[array_index_counter] == # need a regex for is a number
          if array[array_index_counter + 1] == # need a regex for is a number
            array_of_numbers_for_tranlsating << array[array_index_counter + 1]
            @array_index_counter += 1
          end
        end
        number_translator(array_of_numbers_for_tranlsating)
    # if not
      else
      # then translate the letter
        non_number_translator(char)
      end
    @array_index_counter += 1
    end
    format(@braille_array)
  end

  def number_translator(numbers)
    # first output the # character in Braille
    @translated_numbers = [# # in Braille]
    # then output each number in Braille in turn
    numbers.each do |number|
      translated_numbers << english_to_braille_hash[number]
    end
    @translated_numbers
    # finally return an array of braille representations in numbers
  end

  def non_number_translator(character)
    # output the letter in Braille
    english_to_braille_hash[character]
  end

  def format(array)
    @braille_string = array.flatten # to get rid of nested arrays resulting from the translating of numbers
    # insert a line break every 80 characters
    @output_text = # @braille_string with newline inserted correctly
  end

end

NightWriter.new
