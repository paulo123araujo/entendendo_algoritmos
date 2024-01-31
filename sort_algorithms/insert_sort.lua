local list = { 15, 39, 28, 3, 445 }

for i = 2, #list do
	local key = list[i]
	local j = i - 1
	while j > 0 and list[j] > key do
		list[j + 1] = list[j]
		j = j - 1
	end
	list[j + 1] = key
end

for index, value in ipairs(list) do
	print(index, value)
end
