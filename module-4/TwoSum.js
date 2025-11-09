//* hashTable Approach
let numToIndex;
const twoSum = (nums, target) => {
    // Our hash table that stores at which index the number is at
    numToIndex = {};

    for (let i = 0; i < nums.length; i++) {
        const complement = target - nums[i];

        if (numToIndex.hasOwnProperty(complement)) {
            return [numToIndex[complement], i]
        }

        // 4. Add the current number to our hash table
        numToIndex[nums[i]] = i;

    }
}


console.log(twoSum([2, 7, 11, 15], 9))

//* Brute Force 
const twoSumBrute = (numbers, target) => {
    //* 1. Iterate over every possible number pair
    for (let i = 0; i < numbers.length; i++) {
        console.log(numbers[i]);
        // * j is always ahead of i so that we don't re-evaluate already evaluated sums
        for (let j = i + 1; j < numbers.length; j++) {
            //* 2. Check if a given pair adds up to our target

            if (numbers[i] + numbers[j] == target) {
                return [i, j]
            }
        }

    }
}
console.log(twoSumBrute([2, 7, 11, 15], 9))