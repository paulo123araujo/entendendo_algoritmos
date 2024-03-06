--[[
Lista de adjacencias
1 - 2
2 - 1, 3, 4
3 - 2, 4
4 - 2, 3, 4
--]]

local m = {}
m[1] = require("linked-list.linked-list").create()
m[1]:append(2)

m[2] = require("linked-list.linked-list").create()
m[2]:append(1)
m[2]:append(3)
m[2]:append(4)

m[3] = require("linked-list.linked-list").create()
m[3]:append(2)
m[3]:append(4)

m[4] = require("linked-list.linked-list").create()
m[4]:append(2)
m[4]:append(3)
m[4]:append(4)

for i = 1, 4 do
	print("[" .. i .. "]:")
	m[i]:print_list()
end
