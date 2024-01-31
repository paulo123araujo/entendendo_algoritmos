local data = { 1680, 640 }

local function calc(x, y)
	if x % y == 0 then
		return y
	end
	return calc(y, x % y)
end

print(calc(data[1], data[2]))
