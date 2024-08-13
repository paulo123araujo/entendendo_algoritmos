// Link: https://www.techiedelight.com/find-shortest-safe-route-field-sensors-present/

function isFieldSafe(field, item) {
    for (let i = -1; i < 2; i++) {
        if (field[item.x + i] === undefined) continue;
        for (let j = -1; j < 2; j++) {
            if ((i === 0 && j === 0) || field[item.x + i][item.y + j] === undefined) continue;
            if (field[item.x + i][item.y + j] === 0) {
                return false;
            }
        }
    }

    return true;
}


function findShortestSafeRoute(field) {
    if (!field || !field.length) return 0;

    const queue = [];
    const visited = new Set();
    for (let i = 0; i < field.length; i++) {
        queue.push({ x: i, y: 0, dest: 0 });
    }

    while (queue.length) {
        const item = queue.shift();

        if (
            field[item.x] === undefined ||
            field[item.x][item.y] === undefined ||
            field[item.x][item.y] === 0 ||
            visited.has(`${item.x}.${item.y}`)
        ) {
            if (field[item.x] !== undefined && field[item.x][item.y] !== undefined) {
            }
            visited.add(`${item.x}.${item.y}`);
            continue;
        }

        if (!isFieldSafe(field, item)) {
            if (field[item.x] !== undefined && field[item.x][item.y] !== undefined) {
            }
            visited.add(`${item.x}.${item.y}`);
            continue;
        }

        if (item.y === field[0].length - 1 && field[item.x][item.y] === 1) {
            return item.dest;
        }

        visited.add(`${item.x}.${item.y}`);
        queue.push({ x: item.x + 1, y: item.y, dest: item.dest + 1 });
        queue.push({ x: item.x, y: item.y + 1, dest: item.dest + 1 });
        queue.push({ x: item.x - 1, y: item.y, dest: item.dest + 1 });
        queue.push({ x: item.x, y: item.y - 1, dest: item.dest + 1 });
    }
}

function main() {
    const input = [
        [0, 1, 1, 1, 0, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 0, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 0, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 0, 1, 1, 1, 1, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 0],
        [1, 1, 1, 1, 1, 0, 1, 1, 1, 1],
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
    ]

    const shortestPath = findShortestSafeRoute(input)
    if (!shortestPath) {
        console.log('No route is safe to reach destination')
    } else {
        console.log(`The shortest safe route path has length of ${shortestPath}`);
    }
}

main();
