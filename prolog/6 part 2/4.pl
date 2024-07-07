/*
4. Реализовать процедуру для определения первого элемента списка (в учет принимаются списки всех уровней).  
Пример:  в списке [[[s,a],b],c,[e,[f,[[g,e,p],v],y]],x] первый элемент s.
*/

main :-
    % После выполнения этой команды в переменной First будет элемент 's'.
    first_element([[[s,a],b],c,[e,[f,[[g,e,p],v],y]],x], First),
    write(First),
    halt.

% Предикат для определения первого элемента списка (в учет принимаются списки всех уровней)
% first_element(List, FirstElement) - FirstElement - первый элемент списка, учитывая вложенные списки всех уровней.

first_element([H|_], FirstElement) :- atomic(H), FirstElement = H. % Если голова списка - атом, это и есть первый элемент
first_element([H|_], FirstElement) :- first_element(H, FirstElement). % Рекурсивно идем во вложенные списки

first_element([_|T], FirstElement) :- first_element(T, FirstElement). % Если голова списка не подходит, ищем в хвосте
:- main.