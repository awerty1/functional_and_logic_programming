/*
Задание 8.
(a1 a2 … aN)
(b1 b2 … bМ)
Получить декартово произведение двух множеств:
((a1 b1) (a1 b2) … (а1 bM) (a2 b1) (a2 b2) … (a2 bM) … (aN bM))
*/

let cartesianProduct list1 list2 =
    List.collect (fun x -> List.map (fun y -> (x, y)) list2) list1

let setA = [1; 2; 3]
let setB = ["a"; "b"; "c"]

let result = cartesianProduct setA setB
printfn "%A" result