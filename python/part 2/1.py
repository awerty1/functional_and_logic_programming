'''
1) Найдите среднее арифметическое числового списка.
'''

def find_average(numbers):
    return sum(numbers) / len(numbers)

numbers = [1, 2, 3, 4, 5]
average = find_average(numbers)
print(average)