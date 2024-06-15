'''
Задание 1.6. Написать программу, проверяющую, присутствуют ли в списке повторы.
'''

def check_duplicates(lst):
    if len(lst) == len(set(lst)):
        return False
    else:
        return True

# Пример использования
my_list = [1, 2, 3, 4, 5, 1]
if check_duplicates(my_list):
    print("В списке есть повторы.")
else:
    print("В списке нет повторов.")