local M = {}

local stack = {}

M.push = function(value)
	table.insert(stack, value)
end

M.pop = function()
	return table.remove(stack)
end

return M
