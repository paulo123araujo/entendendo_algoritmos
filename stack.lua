local stack = {}
stack.__index = stack

stack.Node = {}
stack.Node.__index = stack.Node

function stack.Node.create(value)
	local s = {}
	setmetatable(s, stack.Node)

	s.value = value
	s.next = nil
	return s
end

function stack.create()
	local s = {}
	setmetatable(s, stack)

	s.first = nil
	s.N = 0

	return s
end

function stack:push(value)
	local oldFirst = self.first
	self.first = stack.Node.create(value)
	self.first.next = oldFirst
	self.N = self:size() + 1
end

function stack:pop()
	if self:isEmpty() then
		return nil
	end

	local oldFirst = self.first
	local value = oldFirst.value
	self.first = oldFirst.next

	self.N = self:size() - 1
	return value
end

function stack:size()
	return self.N
end

function stack:isEmpty()
	return self:size() == 0
end

return stack
