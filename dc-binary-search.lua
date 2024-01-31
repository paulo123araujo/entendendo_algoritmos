local function binarySearch(list, item, up, down)
	if up == nil then
		up = #list
	end

	if down == nil then
		down = 1
	end

	if down <= up then
		local mid = math.floor((up + down) / 2)
		local attempt = list[mid]

		if item == attempt then
			return mid
		elseif item > attempt then
			down = mid + 1
			return binarySearch(list, item, up, down)
		else
			up = mid - 1
			return binarySearch(list, item, up, down)
		end
	end

	return nil
end

local myList = { 1, 3, 5, 7, 9 }
print(binarySearch(myList, 5)) -- returns 3
print(binarySearch(myList, -1)) -- return nil
