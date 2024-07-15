/*
Задание 6.
Написать функцию для удаления из заданного списка всех нулей.
*/

let rec removeZeros list =
    match list with
    | [] -> []
    | head :: tail when head = 0 -> removeZeros tail
    | head :: tail -> head :: removeZeros tail

let originalList = [0; 1; 0; 2; 0; 3; 0; 4]
let listWithoutZeros = removeZeros originalList

printfn "%A" listWithoutZeros