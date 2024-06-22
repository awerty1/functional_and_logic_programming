'''
6) Даны два списка одинаковой длины, состоящие из чисел:
     (a1 a2 … aN)
     (b1 b2 … bN)
Написать функцию, которая возвратит список следующего вида:
     (abs(a1)+abs(b1)  abs(a2)+abs(b2)  …  abs(aN)+abs(bN))
'''

def combine_lists(list1, list2):
    return list(map(lambda x, y: abs(x) + abs(y), list1, list2))

list1 = [1, -2, 3, -4, 5]
list2 = [-1, 2, -3, 4, -5]
combined_list = combine_lists(list1, list2)
print(combined_list)