'''
2) Получить список состоящий из элементов исходного списка поделенных на 2.
'''

numbers = [1, 2, 3, 4, 5]
divided_by_2 = list(map(lambda x: x / 2, numbers))
print(divided_by_2)
