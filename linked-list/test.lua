local LinkedList = require("linked-list")

LinkedList.new()

LinkedList.append(1)
LinkedList.append(2)
LinkedList.prepend(0)
LinkedList.prepend(4)
LinkedList.append(3)

LinkedList.print_list()

print("Lista renovada")

LinkedList.delete(3)
LinkedList.insert_after(2, 10)
LinkedList.print_list()

LinkedList.reverse()
LinkedList.print_list()
