function binarySearch(l, item) {
  let low = 0;
  let high = l.length - 1;

  while (low <= high) {
    const mid = Math.floor((low + high) / 2);
    let attempt = l[mid];
    if (item === attempt) {
      return mid;
    }
    if (attempt > item) {
      high = mid - 1;
    } else {
      low = mid + 1;
    }
  }

  return null;
}

const l = [1, 3, 5, 7, 9];
console.log(binarySearch(l, 3));
console.log(binarySearch(l, -1));
