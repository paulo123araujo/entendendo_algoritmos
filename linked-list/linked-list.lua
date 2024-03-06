local M = {}
M.__index = M

M.Node = {}
M.Node.__index = M.Node

function M.Node.create(value)
	local s = {}
	setmetatable(s, M.Node)

	s.value = value
	s.next = nil
	return s
end

function M.create()
	local s = {}
	setmetatable(s, M)

	s.head = nil

	return s
end

function M:append(value)
	local newNode = M.Node.create(value)
	if not self.head then
		self.head = newNode
		return
	end

	local current = self.head
	while current.next do
		current = current.next
	end

	current.next = newNode
end

function M:prepend(value)
	local node = M.Node.create(value)
	node.next = self.head
	self.head = node
end

function M:delete(value)
	if not self.head then
		return
	end

	if self.head.value == value then
		self.head = self.head.next
		return
	end

	local current = self.head
	while current.next and current.next.value ~= value do
		current = current.next
	end

	if current.next then
		current.next = current.next.next
	end
end

function M:insert_after(value, after_value)
	local current = self.head
	local node = M.Node.create(after_value)
	if current.value == value then
		local tmp = current.next
		node.next = tmp
		current.next = node
		return
	end

	while current.next and current.value ~= value do
		current = current.next
	end

	if current.next then
		local tmp = current.next
		node.next = tmp
		current.next = node
		return
	end

	current.next = node
end

function M:reverse()
	if not self.head.next then
		return
	end

	local prev = nil
	local current = self.head
	local next_node

	while current do
		next_node = current.next
		current.next = prev
		prev = current
		current = next_node
	end

	self.head = prev
end

function M:print_list()
	local current = self.head
	while current do
		print(current.value)
		current = current.next
	end
end

return M
