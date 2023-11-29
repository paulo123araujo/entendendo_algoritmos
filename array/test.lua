local Array = require("array")

Array.append(1)
Array.append(2)
Array.append(4)
Array.prepend(50)

Array.print_all()

print("---- Exibindo primeiro ----")
Array.print(1)
Array.delete(1)
Array.print(1)
Array.print_all()

print("---- Reverse ----")
Array.reverse()
Array.append(100)
Array.print_all()
