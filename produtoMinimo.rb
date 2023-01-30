# This file is an exemple of the minimun product algoritm

# 
def min_product_subset(a)
    n = a.size
    if n == 1
      return a[0]
    end
  
    max_neg = -Float::INFINITY
    min_pos = Float::INFINITY
    count_neg = 0
    count_zero = 0
    prod = 1
  
    a.each do |i|
      if i == 0
        count_zero += 1 #To acount the number of the zeros in array
        next            # Idem the 'continue' in C++
      end
  
      if i < 0
        count_neg += 1 
        #'max' return the maximum negative value between 'max_neg' and 'i', and assign to max_neg
        max_neg = [max_neg, i].max 
      end
  
      if i > 0
        # 'min' return the smallest positive value between 'min_pos' and 'i', and assign to min_pos
        min_pos = [min_pos, i].min
      end
      #'proud' is in the loop yet, and will get the product of the all values different zero of the array
      prod *= i
    end

    # If all the numbers are zeros, If haven't negative numbers, or there is one zero yet 
      if count_zero == n || (count_neg == 0 && count_zero > 0)  # 'n' is the array size
      return 0     # The minimum product will be zero.
    end
    # If haven't negative elements in array, the minimum product will be the smallest positive number
    if count_neg == 0
      return min_pos
    end
    # Need to check, because pair of negative elements cancel each other out
    if count_neg.even? && count_neg != 0 #'even' verify if the quantity of the negatives is pair
      prod /= max_neg 
    end
  
    return prod
  end
  
  a = [1, -1, -2, -4, -3]
  puts min_product_subset(a)
  