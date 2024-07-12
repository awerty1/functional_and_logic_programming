/*
Задание 3.
Найти сумму чисел в списке, при чём отрицательные числа считать дважды при суммировании.
*/

let rec sumWithNegativesTwice lst =
    match lst with
    | [] -> 0
    | head :: tail ->
        if head < 0 then
            head * 2 + sumWithNegativesTwice tail
        else
            head + sumWithNegativesTwice tail

let numbers = [ 1; -2; 3; -4; 5 ]
let sum = sumWithNegativesTwice numbers
printfn "Сумма с учетом отрицательных чисел вдвое: %i" sum