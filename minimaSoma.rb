# This file create a exemple about minimun sum algoritm

def sum_smallest_pair(arr)
    arr.sort! #Sort the array
    return arr[0] + arr[1] # Returns the sum of the first two elements
end
puts "Returns the sum directly"
my_array = [3, 5, 2, 7, 8, 1]
result = sum_smallest_pair(my_array)
puts result # Output: 3

# Include smaller elements in another array before summing them
puts "Include smaller elements in another array before summing them"
def sum_smallest_pair(arr)
    arr.sort! 
    smallest_pair = []
# Adds the first two elements (smallest to the new array    
    smallest_pair << arr[0] << arr[1] # The '<<' adds elements to the original array, the '+' sign creates copies
    return smallest_pair[0] + smallest_pair[1] # Returns the sum
end

my_array = [3, 5, 2, 7, 8, 1]
result = sum_smallest_pair(my_array)
puts result # Output: 3

