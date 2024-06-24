%2. Пусть f(x,y)=6x2-2y-5x+4y2. Вычислите f(3,5)+f(2,8).

:- set_prolog_flag(verbose, silent).
:- prompt(_, '').
:- use_module(library(readutil)).
 
f(X, Y, Result) :-
    Result is 6*X*X - 2*Y - 5*X + 4*Y*Y.
 
compute_and_write_final_result :-
    f(3, 5, Result1),
    f(2, 8, Result2),
    FinalResult is Result1 + Result2,
    write('Final result is: '),
    writeln(FinalResult).
 
main :-
    process,
    halt.
 
process :-
    compute_and_write_final_result.
 
:- main.