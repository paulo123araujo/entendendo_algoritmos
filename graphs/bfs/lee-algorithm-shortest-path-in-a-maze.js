// Link: https://www.techiedelight.com/lee-algorithm-shortest-path-in-a-maze/
const matrix = require('./lee-algorithm-shortest-path.json');

const allowedMoves = {
  x: [-1, 0, 0, 1],
  y: [0, -1, 1, 0],
};

function solve(src, dest, matrix) {
  const queue = [];
  const visited = new Set();

  queue.push({ x: src.x, y: src.y, dist: 0 });
  while (queue.length > 0) {
    const curr = queue.shift();
    if (curr.x == dest.x && curr.y == dest.y) {
      return curr.dist;
    }

    for (let i = 0; i < allowedMoves.x.length; i++) {
      const x = curr.x + allowedMoves.x[i];
      const y = curr.y + allowedMoves.y[i];
      if (!visited.has({ x, y }) && x >= 0 && x < matrix[0].length && y >= 0 && y < matrix.length && matrix[x][y] == 1) {
        visited.add({ x, y });
        queue.push({ x, y, dist: curr.dist + 1 });
      }
    }
  }
}

console.log(`The shortest path is: ${solve({ x: 0, y: 0 }, { x: 7, y: 5 }, matrix)}`)
