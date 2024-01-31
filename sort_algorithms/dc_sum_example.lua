local list = { 2, 4, 6, 8 }

local function sum(arr, total)
	if total == nil then
		total = 0
	end

	if #arr == 0 then
		return total
	end

	local v = table.remove(arr, 1)
	return sum(arr, total + v)
end

print(sum(list))
