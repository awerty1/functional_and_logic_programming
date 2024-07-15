/*
Задание 7.
Даны два списка одинаковой длины, состоящие из чисел:
(a1 a2 … aN)
(b1 b2 … bN)
Написать функцию, которая возвратит список следующего вида:
(abs(a1) + abs(b1) abs(a2) + abs(b2) … abs(aN) + abs(bN))
*/
let absSumOfLists list1 list2 =
    List.map2 (fun x y -> abs x + abs y) list1 list2

let listA = [1; -2; 3; -4]
let listB = [5; -6; 7; -8]

let result = absSumOfLists listA listB
printfn "%A" result