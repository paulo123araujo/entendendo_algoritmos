local list = { 7, 4, 3, 24, 37, -1, 10, 0, 1004 }

local function partition(arr, left, right)
	local pivot = arr[right]
	local i = left

	for j = left, right - 1 do
		if arr[j] <= pivot then
			arr[i], arr[j] = arr[j], arr[i]
			i = i + 1
		end
	end
	arr[i], arr[right] = arr[right], arr[i]
	return i
end

local function quicksort(arr, left, right)
	left = left or 1
	right = right or #arr

	if left < right then
		local p = partition(arr, left, right)
		quicksort(arr, left, p - 1)
		quicksort(arr, p + 1, right)
	end
end

print("### Antes")
for _, v in pairs(list) do
	print(v)
end

quicksort(list)
print("### Ordenado")
for _, v in pairs(list) do
	print(v)
end
