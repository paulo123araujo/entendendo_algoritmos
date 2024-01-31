-- Link: https://www.codechef.com/practice/course/basic-programming-concepts/DIFF500/problems/INSURANCE

local res = {}
while true do
	local n = tonumber(io.read("L"))
	for _ = 1, n do
		local line = io.read("L")
		local splitted = {}
		local i = 1
		for k in line:gmatch("%d+") do
			splitted[i] = tonumber(k)
			i = i + 1
		end
		local l = tonumber(splitted[1]) or 0
		local r = tonumber(splitted[2]) or 0
		table.insert(res, math.min(l, r))
	end

	break
end

for _, v in ipairs(res) do
	print(v)
end
