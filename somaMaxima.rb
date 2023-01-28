# Soma máxima dos elementos do array após inversão dos elementos com valores negativos
# This file is an exemple of tha maximize array algoritm

def maximum_sum(arr, n, k)
    # Execute k times whatever is between 'do' and 'end' (like a for)
    k.times do 
        min = Float::INFINITY # Constant INFINITY makes it possible to store a huge Float number
    # (-1) Indicate that no minimum number index has yet been found in the array.
    # When the loop encounters a minimum number, index is updated with the index of that number in the array.
        index = -1
    # The each_with_index method iterates over each array element
    arr.each_with_index do |num, idx| # num is the elment, idx your index
        if num < min
            min = num
        index = idx                   # update value of 'min' and 'index' respectively, if 'num' less than 'mim'
        end
    end
    break if min == 0
    # It doesn't matter if you reverse the positive numbers, the maximum sum will always be a positive number.
    arr[index] = -arr[index] 
end
arr.sum

end

# Aplication

arr = [-2, 0, 5, -1, 2]
k = 4
n = arr.length

puts maximum_sum(arr, n, k)
