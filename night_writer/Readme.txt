NIGHTWRITER - Braille to English

BDD - Why we're here
The fiction is that I am writing this program to help convert braille text to English.

The reality is that I am writing this program in order to learn how to program and also to pass Module 1. I'm not sure which of those goals has priority.

Both of the goals involve breaking the translation process into small steps with clear assignments of responsibility and using testing to design and validate the development process.

BDD - Process

$ cat braille.txt
..0..0...00.0.00..0.000...
..000....0..0.....0..0.000
.0......00..........00...0

$ ruby ./lib/night_read.rb braille.txt original_message.txt
Created 'original_message.txt' containing 12 characters.

$ cat original_message.txt
Hi 123 bye.
