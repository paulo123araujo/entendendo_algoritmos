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

-- O(n) basicamente porq fazemos O(n) sempre, mas com os sub arrays fica O(n + m -> onde m é a qtde de sub arrays)
-- não chega a ser O(n*n), mas quase
local function calc2(list)
	local m = 0
	for i = 1, #list do
		if list[i] == 0 then
			for j = i, #list do
				if list[j] ~= 0 then
					if j - i > m then
						m = j - i
					end
					i = j
					break
				elseif j == #list then
					local p = j - i + 1
					if p > m then
						m = p
					end
					goto break2
				end
			end
		end
	end
	::break2::
	return m
end

print(calc2(l))
print(calc2(l1))
