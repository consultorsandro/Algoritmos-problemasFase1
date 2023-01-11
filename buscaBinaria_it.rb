#Este Arquivo trata da busca binária por iteração de um array já ordenado
# Metod to binary search with iteration
def binary_search_iterative(arr, target)
    low = 0 # inferior limit
    high = arr.length-1

    while low <= high # loop to iteration
        mid = (low + high) / 2 # To calculate the midpoint of the current range
        if arr[mid] == target
            return mid
        elsif arr[mid] < target
            low = mid + 1
        else 
            high = mid -1
           end
        end

        return -1

    end

array = [1,2,3,4,5,6,7,8,9]
target = 0

puts "Assigning output to a variable:"
result = binary_search_iterative(array, target)

  if result == -1
      puts "The element is not in array"
  else 
      puts "The element is in array at the index: #{result}. "
  end