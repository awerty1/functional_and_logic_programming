/*
Задание 2.
Написать рекурсивную функцию для вычисления чисел Фибоначчи.
*/

open System

let rec fibonacci n = 
    if n < 2 then
        n
    else
        fibonacci (n - 1) + fibonacci (n - 2)

let result = fibonacci 10
printfn "%A" result