
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
const twoSum = function(nums, target) {
  let hashTable = {}
  for (let i=0; i < nums.length; i++) {
    
    let complement = target - nums[i]
    
    if (complement in hashTable) {
      return [i, hashTable[complement]]
    }
    
    // Save value and its corresponding index
    hashTable[nums[i]] = i 
  }
};

let input = [3, 2, 4]
console.log(twoSum(input, 6))