/*
Задание 10.
Написать функцию, принимающую в качестве аргументов два списка. 
Первый список являются числами, которые надо возвести в степень. 
Второй список являются степенями для соответствующих чисел.
*/

let applyPowers (numbers: int list) (powers: int list) =
    List.map2 (fun number power -> int (float(number) ** float(power))) numbers powers

// Пример использования функции
let numbersList = [2; 3; 4]
let powersList = [3; 2; 5]

let results = applyPowers numbersList powersList

// Вывод результатов
printfn "Числа: %A" numbersList
printfn "Степени: %A" powersList
printfn "Результаты: %A" results