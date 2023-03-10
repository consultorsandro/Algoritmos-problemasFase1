# A exemple of the Find Three algoritm

# Import the class Bigdecimal
require 'bigdecimal'

def print3largest(arr, arr_size)
  # There should be atleast three
  # elements
  if (arr_size < 3)
    puts "Invalid Input"
    return
  end

  # Define a 'negative' value large enough to serve as an initial value for the three largest variables. 
  #   (BigDecimal::INFINITY)
  third = first = second = -BigDecimal::INFINITY
  # Use range operator (..)
  # Loop that iterates over a range of integers from 0 to arr_size-1
  for i in 0..(arr_size-1)
    # If current element is greater
    # than first
    if (arr[i] > first)
      third = second
      second = first
      first = arr[i]
    # If arr[i] is in between first
    # and second then update second
    elsif (arr[i] > second)
      third = second
      second = arr[i]
    elsif (arr[i] > third)
      third = arr[i]
    end
  end

  puts "Three largest elements are: #{first}, #{second}, #{third}"
end

# Driver program to test above function
arr = [12, 13, 1, 10, 34, 1]
n = arr.length
print3largest(arr, n)
