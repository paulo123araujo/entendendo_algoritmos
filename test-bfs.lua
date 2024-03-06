local g = require("graphs.graph").create(6)
g:addEdge(0, 5)
g:addEdge(2, 4)
g:addEdge(2, 3)
g:addEdge(1, 2)
g:addEdge(0, 1)
g:addEdge(3, 4)
g:addEdge(3, 5)
g:addEdge(0, 2)
local bfs = require("bfs").create()
local s = 0
bfs:run(g, s)

for i = 0, g:vertexCount() - 1 do
	local v = g:vertexAt(i)
	if v ~= s and bfs:hasPathTo(v) then
		local path = bfs:getPathTo(v)
		local pathText = ""
		while path:isEmpty() == false do
			local x = path:pop()
			if pathText == "" then
				pathText = pathText .. x
			else
				pathText = pathText .. " -> " .. x
			end
		end
		print(pathText)
	end
end
