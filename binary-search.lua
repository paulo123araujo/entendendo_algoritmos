function BinarySearch(list, item)
	local down = 1
	local up = #list

	while down <= up do
		local mid = math.floor((up + down) / 2)
		local attempt = list[mid]

		if item == attempt then
			return mid
		elseif item > attempt then
			down = mid + 1
		else
			up = mid - 1
		end
	end

	return nil
end

local myList = { 1, 3, 5, 7, 9 }
print(BinarySearch(myList, 5)) -- returns 3
print(BinarySearch(myList, -1)) -- return nil
