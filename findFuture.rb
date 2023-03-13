# Comparator function to compare
# the two dates
def comp(s, t)
    # Split the dates strings
    # when a "/" found
    ss = s.split("/")
    tt = t.split("/")
  
    date1 = Array.new(3)
    date2 = Array.new(3)
  
    # Store the dates in form
    # of arrays
    for i in 0..2
      date1[i] = ss[i].to_i
      date2[i] = tt[i].to_i
    end
  
    # If years are not same
    if date1[2] != date2[2]
      return date1[2] - date2[2]
    end
  
    # If months are not same
    if date1[1] != date2[1]
      return date1[1] - date2[1]
    end
  
    # If days are not same
    if date1[0] != date2[0]
      return date1[0] - date2[0]
    end
  
    # If two date is same
    return 0
  end
  
  # Function to print the next
  # closest date
  def next_closest_date(arr, q)
    # Sort date array
    arr.sort! { |a, b| comp(a, b) }
  
    # Perform the Binary search
    # to answer the queries
    l = 0
    r = arr.length - 1
    ind = -1
  
    # Iterate until l <= r
    while l <= r do
      # Find mid m
      m = (l + r) / 2
  
      # Comparator function call
      c = comp(q, arr[m])
  
      # If comp function return 0
      # next closest date is found
      if c == 0
        ind = m
        break
      end
  
      # If comp function return
      # less than 0, search in
      # the left half
      if c < 0
        r = m - 1
        ind = m
      else
        # If comp function return
        # greater than 0, search
        # in the right half
        l = m + 1
      end
    end
  
    # Return the result
    if ind == -1
      return "-1"
    else
      return arr[ind]
    end
  end
  
  def perform_queries(arr, q)
    # Traverse the queries of date
    q.each do |query|
      # Function Call
      puts next_closest_date(arr, query)
    end
  end
  
  # Driver Code
  
  # Given array of dates
  arr = [ "22/4/1233", "1/3/633", "23/5/56645", "4/12/233" ]
  
  # Given Queries
  q = [ "23/3/4345", "4/4/34234234", "12/3/2" ]
  
  # Function Call
  perform_queries(arr, q)
  