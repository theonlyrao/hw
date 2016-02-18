require_relative 'read'

# open the braille file
input_filename = ARGV[0]
braille_message = File.read(input_filename)

# translate it
english_message = Read.new(braille_message).translate

# write it to the new english file
output_filename = ARGV[1]
File.write(output_filename, english_message)

# print the name of the english file and number of characters in it
p "Created #{output_filename.inspect} containing #{english_message.length} characters."
