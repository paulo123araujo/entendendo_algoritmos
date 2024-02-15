local M = {}

local head = nil
local length = 0

M.enqueue = function(value)
	if head == nil then
		head = { value = value, next = nil }
		length = length + 1
		return
	end

	local curr = head
	while curr.next do
		curr = curr.next
	end

	curr.next = { value = value, next = nil }
	length = length + 1
end

M.pop = function()
	if head == nil then
		return nil
	end
	local tmp = head
	head = head.next
	length = length - 1

	return tmp.value
end

return M
