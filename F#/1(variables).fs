/*
Задание 1.
Вычислите среднее арифметическое чисел 23, 5, 43, 17.
*/

let numbers = [23; 5; 43; 17]
let average = List.average (List.map float numbers)
printfn "Среднее арифметическое: %f" average


open System


let numbers = [| 23; 5; 43; 17 |]
let average = 
    numbers
    |> Array.map float
    |> Array.average

printfn "Среднее арифметическое: %f" average