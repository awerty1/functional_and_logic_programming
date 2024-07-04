/*
1. Реализовать процедуру для удаления из списка всех элементов, равных 0. Например: список [1, 0, 2, 0, 0, 3] преобразуется в список [1, 2, 3].
*/

main :-
    delete_zeros([1, 0, 2, 0, 0, 3], Result),
    write(Result),
    halt.

delete_zeros([], []). % Базовый случай: удаление из пустого списка дает пустой список

delete_zeros([0|T], Result) :-
    delete_zeros(T, Result). % Если голова списка равна 0, пропускаем ее

delete_zeros([H|T], [H|Result]) :-
    H \= 0,
    delete_zeros(T, Result). % В противном случае сохраняем голову и продолжаем обработку хвоста

:- main.