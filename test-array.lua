local Array = require("array.array")
local a = Array
a.append(10)
a.append(30)
a.prepend(20)
a.append(40)
a.prepend(50)

a.print(3)

print("--- Queue ---")
local queue = require("queue").create()

print(queue:size())

queue:enqueue(10)
queue:enqueue(20)
queue:enqueue(30)

print(queue:dequeue())
print(queue:dequeue())
print(queue:dequeue())
print(queue:dequeue())

print("--- Stack ---")
local stack = require("stack").create()

stack:push(10)
stack:push(20)
stack:push(30)
print(stack:pop())
print(stack:pop())
print(stack:pop())
print(stack:pop())
