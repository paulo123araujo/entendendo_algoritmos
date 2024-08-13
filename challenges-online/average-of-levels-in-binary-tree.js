// https://leetcode.com/problems/average-of-levels-in-binary-tree/description/

function solution2(root) {
    const res = [];
    if (!root) return res;
    walk(root, 0, res);
    return res.map(x => x.sum / x.count);
}

function walk(node, lvl, res) {
    if (!node) return;
    if (!res[lvl]) res[lvl] = { count: 0, sum: 0 };
    res[lvl].count += 1;
    res[lvl].sum += node.val;
    walk(node.left, lvl + 1, res);
    walk(node.right, lvl + 1, res);
}

function solution(root) {
    if (!root) return [];

    const stack = [root];
    const avg = [];
    let [curr, next] = [1, 0];
    let total = 0;
    let count = stack.length;

    while (stack.length) {
        const node = stack.shift();
        total += node.val;

        if (node.left) {
            next++;
            stack.push(node.left);
        }

        if (node.right) {
            next++;
            stack.push(node.right);
        }

        curr--;
        if (curr === 0) {
            avg.push(total / count);
            [curr, next, total, count] = [next, 0, 0, stack.length];
        }
    }

    return avg;
}

function node(val, left = null, right = null) {
    return { val, left, right }
}

const tree = node(3, node(9), node(20, node(15), node(7)));
console.log(solution(tree));
