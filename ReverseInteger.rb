# @param {Integer} x
# @return {Integer}

MAX_LIMIT = (2 ** 31) - 1
MIN_LIMIT = -(2 ** 31)

def reverse(x)
  negative = false 
  reversed = []
  
  if x < 0
    negative = true 
    x = x * -1
  end 
  
  while x != 0 
    reversed.push(x % 10)
    x = x / 10
  end 

  val = reversed.join.to_i
  
  if negative 
    val = val * -1 
  end 

  if val >= MAX_LIMIT or val <= MIN_LIMIT
    return 0
  end

  return val 
end
