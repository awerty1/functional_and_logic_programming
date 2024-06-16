'''
 Есть два списка одинаковой длины, в одном ключи, в другом значения. Составить словарь.
Пример: a = [‘a’,’b’,’c’], b = [1, 2, 3] ->
{a: 1, b: 2, c:3}
'''

def create_dict(keys, values):
    my_dict = dict(zip(keys, values))
    return my_dict

# Пример использования
keys = ['С', 'С++', 'JAVA']
values = [1, 2, 3]
result = create_dict(keys, values)
print(result)