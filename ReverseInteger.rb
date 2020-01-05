# @param {Integer} x
# @return {Integer}

MAX_LIMIT = (2 ** 31) - 1
MIN_LIMIT = -(2 ** 31)


def get_number_length(x)
  return x.to_s.length
end 

def recursive_split(x, arr) 
  if (get_number_length(x) == 1)
    arr.push(x)
    return arr 
  else  
    place = (10 ** (get_number_length(x) - 1))
    val = x / place 
    arr.push(val)
    x = x - (val * place)

    # Check for length of x and compare it with place
    # If difference in length is greater than 1, append another 0

    if ((get_number_length(place) - get_number_length(x)) > 1)
      count = 1
      difference = get_number_length(place) - get_number_length(x) 
      
      while (count != difference) 
        arr.push(0)
        count +=1 
      end 
    end 

    return recursive_split(x, arr)
  end 
end 

def reverse(x)
  negative = false 
  
  if x < 0
    negative = true 
    x = x * -1
  end 
  
  arr = recursive_split(x, [])
  val = arr.reverse.join.to_i
  
  if negative 
    val = val * -1 
  end 

  if val >= MAX_LIMIT or val <= MIN_LIMIT
    return 0
  end

  return val 
end