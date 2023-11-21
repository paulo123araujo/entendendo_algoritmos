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

Array.delete = function(number) end

Array.print_all = function()
	for i = 1, #items, 1 do
		print(items[i])
	end
end

Array.print = function(index)
	print(items[index])
end

return Array
