def reverse_array(arr, start, _end)
  while start < _end
    arr[start], arr[_end] = arr[_end], arr[start]
    start += 1
    _end -= 1
  end
end

def right_rotate(arr, d)
  n = arr.length
  reverse_array(arr, 0, n-1)
  reverse_array(arr, 0, d-1)
  reverse_array(arr, d, n-1)
end

def print_array(arr)
  arr.each { |i| print "#{i} " }
  puts
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
k = 3

right_rotate(arr, k)
print_array(arr)
