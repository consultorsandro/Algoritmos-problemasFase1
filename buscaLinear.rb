#Este arquivo dá exemplo de um algoritmo de busca linear 
# This file is an exemplo of the search linear algoritm in Ruby
# If x is present then return its location, otherwise return -1



# Making a search linear
arr = [2,3,4,10,40]

if result = arr.find {x == 10} # search the x in the list
    if index = arr.index(x)    # Set the index value of x
        puts "The x is present and has index: #{index}"
    end

else
    puts "The x is not present in the list" #Answer this if not find x
end

