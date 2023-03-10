# This code is a exemple of the count algoritm

def count(str)
    upper, lower, number, special = 0, 0, 0, 0 # variables initialized whith 0

    # String object method in Ruby that iterates over each character in the string (.each_char)
    # Assigning each character to a char variable on each iteration, 
    #   so that we can perform some operations on each character individually. (do |char|)
    str.each_char do |char| 
    # The regular expression (REGEX) used here is /[A-Z]/, which matches any character from A to Z in uppercase.
      if char.match?(/[A-Z]/)
        upper += 1
      elsif char.match?(/[a-z]/)
        lower += 1
      elsif char.match?(/[0-9]/)
        number += 1
      else
        special += 1
      end
    end
    puts "Upper case letters: #{upper}"
    puts "Lower case letters: #{lower}"
    puts "Number: #{number}"
    puts "Special characters: #{special}"
  end
  
  # Driver Code
  str = "#GeeKs01fOr@gEEks07"
  count(str)

  
