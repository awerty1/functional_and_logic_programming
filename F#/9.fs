/*
Задание 9.
Написать функцию, которая генерируют таблицу умножения, которая состоит кортежей вида (a, b, a * b), 
при этом функция имеет два аргумента – начальное значение таблицы и конечное (например, 1 и 10, будет 
получена таблица умножения от 1 до 10).
*/

let multiplicationTable (startValue:int) (endValue:int) =
    [ for i in startValue..endValue do
        for j in startValue..endValue do
            yield (i, j, i * j) ]

// Пример использования функции для создания таблицы умножения от 1 до 10
let table = multiplicationTable 1 10

// Вывод результатов
table |> List.iter (fun (a, b, result) -> printfn "%d * %d = %d" a b result)