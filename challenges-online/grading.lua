-- Link: https://www.hackerrank.com/challenges/grading/problem?isFullScreen=true

local n = tonumber(io.read("L"))

local function gradingStudents(grades)
	for k, v in pairs(grades) do
		if v < 38 then
			goto continue
		end

		if 5 - (v % 5) < 3 then
			grades[k] = v + (5 - (v % 5))
		end

		::continue::
	end
	return grades
end

local grades = {}
for _ = 1, n do
	table.insert(grades, tonumber(io.read("L")))
end

print(table.concat(gradingStudents(grades), "\n"))
