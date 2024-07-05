/*
2. Реализовать процедуру для замены  всех  вхождений  заданного элемента в списке на новый элемент.
*/

main :-
    replace_all([a, b, a, c, a], a, x, Result),
    write(Result),
    halt.

% Базовый случай: замена всех вхождений элемента в пустом списке дает пустой список
replace_all([], _, _, []).
% Если элемент равен искомому, заменяем его и рекурсивно обрабатываем хвост списка
replace_all([X|T], X, Y, [Y|Result]) :-
    replace_all(T, X, Y, Result).
% Если элемент не равен искомому, просто добавляем его и рекурсивно обрабатываем хвост списка
replace_all([H|T], X, Y, [H|Result]) :-
    H \= X,
    replace_all(T, X, Y, Result).
    
:- main.