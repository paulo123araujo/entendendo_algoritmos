-- link: https://codeforces.com/problemset/problem/69/A

local n = tonumber(io.read("L"))

local x, y, z = 0, 0, 0
for _ = 1, n do
	local tx, ty, tz = io.read("L"):match("(%-?%d+) (%-?%d+) (%-?%d+)")
	x = x + tonumber(tx)
	y = y + tonumber(ty)
	z = z + tonumber(tz)
end

if x == 0 and y == 0 and z == 0 then
	print("YES")
else
	print("NO")
end
