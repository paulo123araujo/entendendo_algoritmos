local Queue = {}
Queue.__index = Queue

Queue.Node = {}
Queue.Node.__index = Queue.Node

function Queue.Node.create(value)
	local s = {}
	setmetatable(s, Queue.Node)

	s.value = value
	s.next = nil
	return s
end

function Queue.create()
	local s = {}
	setmetatable(s, Queue)
	s.first = nil
	s.last = nil
	s.N = 0

	return s
end

function Queue:enqueue(value)
	local oldLast = self.last
	self.last = Queue.Node.create(value)
	if oldLast ~= nil then
		oldLast.next = self.last
	end
	if self.first == nil then
		self.first = self.last
	end

	self.N = self.N + 1
end

function Queue:dequeue()
	local oldFirst = self.first
	if oldFirst == nil then
		return nil
	end

	local value = oldFirst.value
	self.first = oldFirst.next
	self.N = self.N - 1

	if self.first == nil then
		self.last = nil
	end

	return value
end

function Queue:size()
	return self.N
end

function Queue:isEmpty()
	return self.N == 0
end

return Queue
