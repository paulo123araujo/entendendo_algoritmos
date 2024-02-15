local Array = require("array.array")
local a = Array
a.append(10)
a.append(30)
a.prepend(20)
a.append(40)
a.prepend(50)

a.print(3)

print("--- Queue ---")
local Queue = require("queue")

Queue.enqueue(10)
Queue.enqueue(20)
Queue.enqueue(30)

print(Queue.pop())
print(Queue.pop())
print(Queue.pop())
print(Queue.pop())

print("--- Stack ---")
local stack = require("stack")

stack.push(10)
stack.push(20)
stack.push(30)
print(stack.pop())
print(stack.pop())
print(stack.pop())
print(stack.pop())
