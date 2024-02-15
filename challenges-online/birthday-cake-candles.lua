-- Link: https://www.hackerrank.com/challenges/birthday-cake-candles/problem?isFullScreen=true

local function birthdayCakeCandles(candles)
	local m = { [candles[1]] = 1 }

	for i = 2, #candles do
		if m[candles[i]] ~= nil then
			m[candles[i]] = m[candles[i]] + 1
		else
			m[candles[i]] = 1
		end
	end

	local g = 0
	for _, v in pairs(m) do
		if v > g then
			g = v
		end
	end
	return g
end

local candles = {}

local _ = tonumber(io.read("L"))

for token in string.gmatch(io.read("*l"):gsub("%s+$", ""), "[^%s]+") do
	table.insert(candles, tonumber(token))
end

local result = birthdayCakeCandles(candles)

print(result)
