require_relative 'write'

# open the braille file
input_filename = ARGV[0]
english_message = File.read(input_filename)

# translate it
braille_message = Write.new(english_message).write_braille

# write it to the new english file
output_filename = ARGV[1]
File.write(output_filename, braille_message)

# print the name of the english file and number of characters in it
p "Created #{output_filename.inspect} containing #{english_message.length} characters."
