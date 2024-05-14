-- https://codeforces.com/problemset/problem/32/B
local line = io.read("L")

local i = 1
local res = ""
while i < #line do
	if line:sub(i, i) == "." then
		res = res .. "0"
		i = i + 1
	elseif line:sub(i, i + 1) == "-." then
		res = res .. "1"
		i = i + 2
	elseif line:sub(i, i + 1) == "--" then
		res = res .. "2"
		i = i + 2
	end
end

print(res)
