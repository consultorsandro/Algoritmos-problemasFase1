# This file is an exemple of the Pangram algoritm to Ruby language

MAX_CHAR = 26 #Reference to the zise of the alphabet

def missing_chars(str)
# Fills all positions with the value "false".
# If a letter is present in the string, the value at the corresponding position 
#in the array will be changed to "true".
present = Array.new(MAX_CHAR, false)

#"each_char" is a structure to loop in Ruby
# the current char is stored in variable c 
#to verify if each letter of the string is present in alphabet
str.each_char do |c|
if c >= 'a' && c <= 'z'
# The line "present[c.ord - 'a'.ord] = true" is used to mark a letter as present in the "present" array.
#The expression "c.ord" returns the ASCII value of the current character (stored in the variable "c"). 
#The expression "'a'.ord" returns the ASCII value of the letter "a". 
#By subtracting these two values, we get the position of the current letter in alphabetical order 
#(from 0 to 25, for the 26 letters of the English alphabet).
present[c.ord - 'a'.ord] = true
elsif c >= 'A' && c <= 'Z'
present[c.ord - 'A'.ord] = true
end
end

res = ""

MAX_CHAR.times do |i|
res += (i + 'a'.ord).chr if !present[i]
end

res
end

str = "The quick brown fox jumps over the dog"

puts missing_chars(str)