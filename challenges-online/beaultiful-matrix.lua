-- link: https://codeforces.com/problemset/problem/263/A
local function split(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end

	local t = {}
	for str in inputstr:gmatch("([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

for i = 1, 5 do
	local line = split(io.read("L"))
	for j, v in ipairs(line) do
		if tonumber(v) == 1 then
			print(math.abs(3 - i) + math.abs(3 - j))
		end
	end
end
