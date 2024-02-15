--[[
Desafio
Suponha que você se deparasse com o seguinte cenário:

Ao receber o array a seguir → [1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1]

Agora, sua tarefa consiste em determinar o número máximo de sequências contínuas de "0" presentes nesse array.

Como você abordaria esse desafio? Reserve um momento para refletir sobre possíveis estratégias e qual é o fundamento por trás disso, discutiremos sobre isso na próxima semana.
--]]

local l = { 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 1 }
local l1 = { 1, 0, 0 }

local function calc(list)
	local c = 0
	for i = 1, #list do
		if list[i] == 0 then
			for j = i, #list do
				if list[j] ~= 0 then
					break
				end
				c = c + 1
			end
		end
	end
	return c
end

print(calc(l))
print(calc(l1))
