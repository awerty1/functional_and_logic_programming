/*
Задание 5.
Получить список, состоящий из элементов исходного списка поделенных на 2.
*/

let originalList = [1; 2; 3; 4; 5]
let dividedBy2List = [for x in originalList -> x / 2]
printfn "%A" dividedBy2List