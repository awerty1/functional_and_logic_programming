'''
Задание 1.3. Используя функции pop, remove, insert, append, напишите программу, которая преобразует список [4, 6, 8, 16, 44]  в списки:
    1. [6, 8, 16]
    2. [5, 6, 8, 16, 45]
'''
# Исходный список
lst = [4, 6, 8, 16, 44]
print("Исходный список:", lst)

# 1. Удаление первого и последнего элементов
lst.pop(0)
lst.remove(lst[-1])
print("Результат #1:", lst)

# 2. Вставка новых элементов
lst.insert(0, 5)
lst.append(45)
print("Результат #2:", lst)