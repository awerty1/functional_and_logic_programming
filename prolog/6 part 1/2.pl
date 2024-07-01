% Определение рекурсивной процедуры для вычисления N-го члена ряда Фибоначчи
fibonacci(1, 1).
fibonacci(2, 1).
fibonacci(N, Result) :-
    N > 2,
    N1 is N - 1,
    N2 is N - 2,
    fibonacci(N1, F1),
    fibonacci(N2, F2),
    Result is F1 + F2.

% Основной предикат для запуска кода
main_fibonacci(N):-
    fibonacci(N, Result),
    write('The '), write(N), write('-th Fibonacci number is: '), write(Result).

% Основной предикат для запуска всей программы
main:-
    process,
    halt.

process:-
    write('Hello World'),
    nl, % переход на новую строку
    main_fibonacci(10).

% Директива для запуска предиката main при загрузке программы
:- initialization(main, main).
