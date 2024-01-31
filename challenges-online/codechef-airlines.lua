-- Link: https://www.codechef.com/practice/course/basic-programming-concepts/DIFF500/problems/AIRLINES
local n = tonumber(io.read("L"))
local res = {}

for _ = 1, n do
	local line = io.read("L")
	local airplanes = 10

	local split = {}
	for k in line:gmatch("%d+") do
		table.insert(split, tonumber(k))
	end
	local x, y, z = split[1], split[2], split[3]

	x, y, z = tonumber(x), tonumber(y), tonumber(z)

	local total = x * airplanes
	if total >= y then
		table.insert(res, y * z)
	else
		table.insert(res, total * z)
	end
end

for _, v in ipairs(res) do
	print(v)
end
