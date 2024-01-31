local list = { 100, 33, 55, 77, 101, 13 }

local function max(arr, ref)
	if ref == nil then
		ref = 0
	end

	if #arr == 1 then
		if arr[1] > ref then
			return arr[1]
		end

		return ref
	else
		local v = table.remove(arr, 1)
		if v > ref then
			return max(arr, v)
		end

		return max(arr, ref)
	end
end

print(max(list))
