# https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions/

# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  current_string = ""
  max_length = 0

  s.each_char.with_index { |letter, index|
    if current_string.include?(letter)
      letter_index = current_string.index(letter)
      current_string = current_string[letter_index+1..index]
    end 

    current_string += letter

    max_length = [current_string.length, max_length].max 
  } 

  return max_length
end