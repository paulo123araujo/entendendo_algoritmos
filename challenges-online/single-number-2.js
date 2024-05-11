// https://leetcode.com/problems/single-number-ii/description/
function singleNumber(nums) {
  const map = new Map();

  for (let i = 0; i < nums.length; i++) {
    const mapped = map.get(nums[i]);
    if (!mapped) {
      map.set(nums[i], 1);
      continue;
    }

    map.set(nums[i], mapped + 1);
  }

  for (const element of map.entries()) {
    if (element[1] === 1) {
      return element[0];
    }
  }

  throw new Error('No single number found');
}

function singleNumber2(nums) {
  let ones;
  let twos;

  for (const i of nums) {
    ones = (ones ^ i) & ~twos;
    twos = (twos ^ i) & ~ones;
  }

  return ones;
}

console.log(singleNumber([2, 2, 3, 2]))
console.log(singleNumber2([2, 2, 3, 3, 3, 2, 1]))
