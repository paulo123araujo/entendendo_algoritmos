// Link: https://www.techiedelight.com/chess-knight-problem-find-shortest-path-source-destination/
const allowedMoves = {
  rows: [2, 2, 1, 1, -1, -1, -2, -2],
  cols: [1, -1, 2, -2, 2, -2, 1, -1],
};

/**
  * @param {number} src Par de x e y dos pontos da origem
  * @param {number} dest Par de x e y dos pontos de destino
  * @param {number} n tamanho do board quadrado
  * @return {boolean} se é um movimento válido
  */
function isValid(x, y, n) {
  return (x >= 0 && x < n && y >= 0 && y < n);
}

/**
  * @param {{x: number, y: number}} src Par de x e y dos pontos da origem
  * @param {{x: number, y: number}} dest Par de x e y dos pontos de destino
  * @param {number} n tamanho do board quadrado
  * @return {number} o menor caminho
  */
function solve(src, dest, n) {
  const queue = [];
  const visited = new Set();

  queue.push({ x: src.x, y: src.y, distance: 0 });
  while (queue.length > 0) {
    const node = queue.shift();
    if (node.x === dest.x && node.y === dest.y) {
      return node.distance;
    }

    if (!visited.has(node)) {
      visited.add(node);

      for (let i = 0; i < allowedMoves.rows.length; i++) {
        let x = node.x + allowedMoves.rows[i];
        let y = node.y + allowedMoves.cols[i];

        if (isValid(x, y, n)) {
          queue.push({ x, y, distance: node.distance + 1 });
        }
      }
    }
  }
}

console.log(`The minimum number of steps required is ${solve({ x: 4, y: 7 }, { x: 4, y: 0 }, 8)}`);
