#Este arquivo traz propostas de algoritmos de busca binária em arrays já ordenados

# Recursive Method
# If target is present, return his location in array
# If not, return -1 
def binary_search_recursive(array, left, right, target)
    # to show that element is not in array
    if left > right 
      return -1
    end
        
    middle = (left + right) / 2
    # Verify if element in the midle is the target
    if array[middle] == target
      return middle
    elsif array[middle] > target
        #Search int the limit to right (middle -1)
      return binary_search_recursive(array, left, middle - 1, target)
    else
        #Search int the limit to left (middle +1)
      return binary_search_recursive(array, middle + 1, right, target)
    end

  end
  
  # Exemple
  array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  target = 0
  puts "Output:"
  puts binary_search_recursive(array, 0, array.length - 1, target) 
  
  #------------------------ 
  puts "Assigning output to a variable:"
  result = binary_search_recursive(array, 0, array.length - 1, target) 
 
    if result == -1
        puts "The element is not in array"
    else 
        puts "The element is in array at the index: #{result}. "
    end


    
