# @param {Integer} x
# @return {Integer}

def get_number_length(x)
  return x.to_s.length
end 

def recursive_split(x, arr) 
  # puts "currently doing #{x}"
  if (get_number_length(x) == 1)
    arr.push(x)
    return arr 
  else  
    place = (10 ** (get_number_length(x) - 1))
    # puts "#{place}"
    val = x / place 
    # puts "pushing #{val}"
    arr.push(val)
    x = x - (val * place)
    # puts "x: #{x}"
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
  
  return val 
end

puts "final arr: ", reverse(901000).to_s