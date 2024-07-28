;Задание 7. Поэкспериментируйте с функцией ATOM. Какой будет результат следующих выражений: 
;(atom nil), (atom ()), (atom '()), (atom '(nil)), (atom (atom (+ 2 3)))?

(print (atom nil))

(print (atom ()))

(print (atom '(nil)))

(print (atom (atom (+ 2 3))))

