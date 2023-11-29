local Array = {}

local items = {}

Array.append = function(number)
	items[#items + 1] = number
end

Array.prepend = function(number)
	for i = #items, 0, -1 do
		items[i + 1] = items[i]
	end
	items[1] = number
end

Array.delete = function(index)
	if not items[index] then
		return
	end

	for i = index, #items, 1 do
		if items[i + 1] then
			items[i] = items[i + 1]
		end
	end

	items[#items] = nil
end

Array.print_all = function()
	for _, item in ipairs(items) do
		print(item)
	end
end

Array.print = function(index)
	if items[index] then
		print(items[index])
	else
		print("invalid index")
	end
end

Array.reverse = function()
	local start, stop = 1, #items
	while start < stop do
		items[start], items[stop] = items[stop], items[start]
		start = start + 1
		stop = stop - 1
	end
end

return Array
