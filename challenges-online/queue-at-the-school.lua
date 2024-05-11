-- link: https://codeforces.com/problemset/problem/266/B
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

local line = split(io.read("L"))
local queue = io.read("L")
for _ = 1, tonumber(line[2]) do
	queue = queue:gsub("BG", "GB")
end
print(queue)
