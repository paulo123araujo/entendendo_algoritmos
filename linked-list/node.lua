local M = {}

M.new_node = function(value)
	local node = { value = value, next = nil }
	return node
end

return M
