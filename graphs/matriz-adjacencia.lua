--[[
Matriz de adjacencias
1 - 2
2 - 1, 3, 4
3 - 2, 4
4 - 2, 3, 4
--]]

local m = {}

m[1] = {}
m[1][2] = true

m[2] = {}
m[2][1] = true
m[2][3] = true
m[2][4] = true

m[3] = {}
m[3][2] = true
m[3][4] = true

m[4] = {}
m[4][2] = true
m[4][3] = true
m[4][4] = true

for i = 1, 4 do
	for j = 1, 4 do
		if m[i][j] then
			print("[" .. i .. "][" .. j .. "] = " .. "true")
		else
			print("[" .. i .. "][" .. j .. "] = " .. "false")
		end
	end
end
