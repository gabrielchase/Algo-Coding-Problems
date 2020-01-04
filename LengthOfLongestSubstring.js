// https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions/

/**
 * @param {string} s
 * @return {number}
 */
const lengthOfLongestSubstring = function(s) {
  let currentString = ''
  let longestStringLength = 0
  
  for (c of s) {
      if (currentString.includes(c)) {
        let repeatedCharIndex = currentString.indexOf(c)
        currentString = currentString.slice(repeatedCharIndex + 1, currentString.length)
      } 
        
      currentString += c
      
      if (currentString.length > longestStringLength)
        longestStringLength = currentString.length  
  }
  
  return longestStringLength
};

console.log(lengthOfLongestSubstring("dvdf"))
