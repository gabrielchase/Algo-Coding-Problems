// https://leetcode.com/problems/two-sum/

/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
const twoSum = function(nums, target) {
    for (let i=0; i < nums.length; i++) {
        for (let j=i+1; j < nums.length; j++) {
            console.log(i, j)
            if (nums[i] + nums[j] === target) {
              return [ i, j ]
            }
        }    
    }
};

let input = [3,3]
console.log(twoSum(input, 6))