-- Link: https://www.codechef.com/practice/course/logical-problems/DIFF800/problems/AVGPROBLEM

local n = tonumber(io.read("L"))

for _ = 1, n do
	local line = io.read("L")

	local splitted = {}
	for k in line:gmatch("%d+") do
		table.insert(splitted, tonumber(k))
	end

	local a, b, c = splitted[1], splitted[2], splitted[3]

	if (a + b) / 2 > c then
		print("YES")
	else
		print("NO")
	end
end
