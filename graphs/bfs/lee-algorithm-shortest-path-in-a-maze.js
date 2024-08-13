// Link: https://www.techiedelight.com/lee-algorithm-shortest-path-in-a-maze/
const matrix = require('./lee-algorithm-shortest-path.json');

function solve(src, dest, matrix) {
    if (!matrix || !matrix.length) return -1;

    const queue = [];
    const visited = new Set();
    queue.push({ x: src.x, y: src.y, dist: 0 });

    while (queue.length) {
        const item = queue.shift();
        if (
            matrix[item.x] === undefined ||
            matrix[item.x][item.y] === undefined ||
            matrix[item.x][item.y] === 0 ||
            visited.has(`${item.x}.${item.y}`)
        ) {
            continue;
        }

        if (item.x === dest.x && item.y === dest.y) {
            return item.dist;
        }

        visited.add(`${item.x}.${item.y}`);
        queue.push({ x: item.x - 1, y: item.y, dist: item.dist + 1 });
        queue.push({ x: item.x, y: item.y - 1, dist: item.dist + 1 });
        queue.push({ x: item.x + 1, y: item.y, dist: item.dist + 1 });
        queue.push({ x: item.x, y: item.y + 1, dist: item.dist + 1 });
    }
}

console.log(`The shortest path is: ${solve({ x: 0, y: 0 }, { x: 7, y: 5 }, matrix)}`)
