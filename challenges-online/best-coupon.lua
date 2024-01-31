-- Link: https://www.codechef.com/practice/course/basic-programming-concepts/DIFF500/problems/CHEAPFOOD
local n = tonumber(io.read("L"))
local res = {}

for _ = 1, n do
	local v = tonumber(io.read("L"))
	local x = v * 0.1
	local y = 100
	table.insert(res, math.max(x, y))
end

for _, v in ipairs(res) do
	print(math.floor(v))
end
