/*
Задание 11.
Написать функцию, которая возвращает два списка из исходного: отрицательных чисел и неотрицательных чисел.
*/

let splitNumbers (inputList: int list) =
    let negativeNumbers, nonNegativeNumbers = List.partition (fun x -> x < 0) inputList
    (negativeNumbers, nonNegativeNumbers)

// Пример использования функции
let inputList = [1; -2; 5; -7; 0; 3]
let result = splitNumbers inputList

let negativeNumbers, nonNegativeNumbers = result

// Вывод результатов
printfn "Исходный список: %A" inputList
printfn "Отрицательные числа: %A" negativeNumbers
printfn "Неотрицательные числа: %A" nonNegativeNumbers