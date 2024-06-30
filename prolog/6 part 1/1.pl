% Определение рекурсивной процедуры для подсчета среднего арифметического квадратов чисел в заданном интервале
average_squares(M, N, Average):- M > N, Average is 0.
average_squares(M, N, Average):-
    M =< N,
    Sum is M*M,
    NextM is M + 1,
    average_squares(NextM, N, RemainingAverage),
    Count is N - M + 1,
    Average is (Sum + RemainingAverage) / Count.

% Основной предикат для запуска кода
main:-
    process,
    halt.

process:-
    % Выполнение задачи подсчета среднего арифметического ряда квадратов целых чисел в интервале от 1 до 5, например
    average_squares(1, 5, Result),
    write('Average of squares from 1 to 5 is: '), write(Result).

% Директива для запуска предиката main при загрузке программы
:- initialization(main, main).
