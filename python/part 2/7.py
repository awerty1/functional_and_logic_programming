'''
7) Даны два множества, представленных списками:
     (a1 a2 … aN)
     (b1 b2 … bМ)
Получить декартово произведение двух множеств:
     ((a1 b1)  (a1 b2) … (а1 bM) (a2 b1) (a2 b2) … (a2 bM) …  (aN bM))
'''


set1 = [1, 2, 3]
set2 = ['a', 'b', 'c']
cartesian_product = [(x, y) for x in set1 for y in set2]
print(cartesian_product)
