% Определение предиката для умножения
multiply(X, Y, Z) :-
    Z is X * Y.

% Предикат для записи строки в файл
write_to_file(File, Text) :-
    open(File, append, Stream),
    write(Stream, Text),
    nl(Stream),
    close(Stream),
	write('Rezultaty tablitsy umnozheniya sohraneny v fayle: '), write(File), nl. % Добавление сообщения о пути сохранения

% Предикат для вывода таблицы умножения чисел от M до N в файл
multiplication_table_to_file(M, N, File) :-
    between(M, N, X),
    between(M, N, Y),
    multiply(X, Y, Result),
    atomic_list_concat([X, ' * ', Y, ' = ', Result], Row),
    write_to_file(File, Row),
    fail.
multiplication_table_to_file(_, _, _).

% Основной предикат для запуска
main :-
    M = 1, % Нижний предел таблицы умножения
    N = 5, % Верхний предел таблицы умножения
    File = 'multiplication_table.txt',
    write_to_file(File, 'Multiplication Table:'),
    multiplication_table_to_file(M, N, File).

% Запуск программы
main.
