'''
4) Написать функцию для удаления из заданного списка всех числовых атомов, равных нулю. 
'''

def remove_zeros(numbers):
    return list(filter(lambda x: x != 0, numbers))

numbers = [1, 0, 2, 0, 3, 0, 4, 0, 5]
filtered_list = remove_zeros(numbers)
print(filtered_list)
