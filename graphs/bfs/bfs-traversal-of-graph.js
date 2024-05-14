// Link: https://www.geeksforgeeks.org/problems/bfs-traversal-of-graph/1
const graph = {
  0: [1, 2, 3],
  1: [],
  2: [4],
  3: [],
  4: [],
}

function bfs(graph, start) {
  const queue = [start];
  while (queue.length > 0) {
    const v = queue.shift();
    queue.push(...graph[v]);
    console.log(v);
  }
}

bfs(graph, 0);
