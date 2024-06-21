'''
5) Написать функцию, которая производит следующую операцию над числовым списком (можно использовать встроенный в Python модуль math и функцию factorial):
     (a1 a2 … aN)  ->   (a1! a2! … aN!)
'''

import math

def apply_factorial(numbers):
    return list(map(math.factorial, numbers))

numbers = [1, 2, 3, 4, 5]
result = apply_factorial(numbers)
print(result)

