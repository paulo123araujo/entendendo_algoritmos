local Node = require("node")

local M = {}

local head

M.new = function()
	return { head = nil }
end

M.append = function(value)
	local newNode = Node.new_node(value)
	if not head then
		head = newNode
		return
	end

	local current = head
	while current.next do
		current = current.next
	end

	current.next = newNode
end

M.prepend = function(value)
	local node = Node.new_node(value)
	node.next = head
	head = node
end

M.delete = function(value)
	if not head then
		return
	end

	if head.value == value then
		head = head.next
		return
	end

	local current = head
	while current.next and current.next.value ~= value do
		current = current.next
	end

	if current.next then
		current.next = current.next.next
	end
end

M.insert_after = function(value, after_value)
	local current = head
	local node = Node.new_node(after_value)
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

M.reverse = function()
	if not head.next then
		return
	end

	local prev = nil
	local current = head
	local next_node

	while current do
		next_node = current.next
		current.next = prev
		prev = current
		current = next_node
	end

	head = prev
end

M.print_list = function()
	local current = head
	while current do
		print(current.value)
		current = current.next
	end
end

return M
