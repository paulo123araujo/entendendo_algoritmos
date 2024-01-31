const data = {
  x: 1680,
  y: 640,
};

function calc(x, y) {
  if (x % y == 0) {
    return y;
  }

  return calc(y, x % y);
}

console.log(calc(data.x, data.y));
