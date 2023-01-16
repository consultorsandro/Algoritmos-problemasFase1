# This file is an exemple about counting sort algoritm

# Create the function counting sort
# 
def counting_sort(arr)
  max = arr.max
  count = Array.new(max+1, 0) # Creates a count array capable of containing the entire original array 
  
  #It is necessary to add one more position for each index in order to fit the elements
  # of the original array.
  arr.each do |i|  
    count[i] += 1
  end
  
  output = [] #Create empty array outside the loop

 # 'each_with_index' pass index and value from each element of original array 
  count.each_with_index do |c, i|
 # Puts each element in the index respective de seu valor, in correct order
    c.times { output << i }
  end
  
  output #return the original array in correct order
end

# original array
arr = [4, 2, 9, 8, 1, 3, 5, 7, 6, 11, 10]
puts counting_sort(arr) # Activate and print the result of the counting sort functionn 
