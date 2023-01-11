#Este arquivo trata do algoritmo de ordenação bubblesort

#Metod to implement bubble sort
def bubblesort(arr)
    n = arr.length # to known the sie of array

    loop do
        swapped = false # Control the loop 
        #Other loop
        (n-1).times do |i| # Iterates over the array to the penultimate position
        if arr[i] > arr[i+1] # Make the swap if bigger before the smaller
            arr[i], arr[i+1] =   arr[i+1], arr[i] # code to change

            swapped = true # If true, loop again 
        end
    end

    break if not swapped

    
end

return arr

end

array = [4,3,78,2,0,3]
p bubblesort(array)
lista_ordenada = bubblesort(array)

puts "A lista ordenada será: #{lista_ordenada}."





   
