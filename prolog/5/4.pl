% Используя	предикаты parent(symbol,symbol), man(symbol), woman(symbol), married(symbol,symbol), записать   факты, 
% описывающие вашу   семью.   Записать  8 правил вывода для любых родственных отношений в вашей семье 
% (например: мать, отец,   сестра,   брат,   племянница,   племянник,   тетя,   дядя,   внучка,   внук,   бабушка, 
% дедушка, двоюродная сестра, двоюродный брат и т.д.).

% Факты
parent(olga, anna).
parent(olga, dmitry).
parent(ivan, anna).
parent(ivan, dmitry).
man(ivan).
woman(olga).
woman(anna).
man(dmitry).
married(ivan, olga).

% Правила вывода для родственных отношений
mother(X, Y) :- parent(X, Y), woman(X).
father(X, Y) :- parent(X, Y), man(X).
sister(X, Y) :- parent(Z, X), parent(Z, Y), woman(X), X\=Y.
brother(X, Y) :- parent(Z, X), parent(Z, Y), man(X), X\=Y.
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandmother(X, Z) :- grandparent(X, Z), woman(X).
grandfather(X, Z) :- grandparent(X, Z), man(X).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W), X\=Y.
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X\=Y.

% Дополнительные правила, например для племянницы и племянника
niece(X, Y) :- sibling(Z, Y), parent(Z, X), woman(X).
nephew(X, Y) :- sibling(Z, Y), parent(Z, X), man(X).





% Пример использования правил для вывода отношений в вашей семье
% Проверка, кто является матерью Анны
%?- mother(X, anna).
% Проверка, кто является дедушкой Дмитрия
%?- grandfather(X, dmitry).

% Проверка, кто является матерью Анны
%?- mother(X, anna).
% Ответ: X = olga

% Проверка, кто является отцом Дмитрия
%?- father(X, dmitry).
% Ответ: X = ivan

% Проверка, кто является дедушкой Анны
%?- grandfather(X, anna).
% Ответ: false (можно дополнить базу знаний для этого случая)

% Проверка, кто является тетей Дмитрия
%?- aunt(X, dmitry).
% Ответ: X = anna

% Проверка, кто является племянницей Анны
%?- niece(X, anna).
% Ответ: X = dmitry

% Проверка, кто является братом Анны
%?- brother(X, anna).
% Ответ: X = dmitry

% Проверка, кто является кузеном Дмитрия
%?- cousin(X, dmitry).
% Ответ: false (можно дополнить базу знаний для этого случая)













% Используя	предикаты parent(symbol,symbol), man(symbol), woman(symbol), married(symbol,symbol), записать   факты, 
% описывающие вашу   семью.   Записать  8 правил вывода для любых родственных отношений в вашей семье 
% (например: мать, отец,   сестра,   брат,   племянница,   племянник,   тетя,   дядя,   внучка,   внук,   бабушка, 
% дедушка, двоюродная сестра, двоюродный брат и т.д.).

% Факты
parent(olga, anna).
parent(olga, dmitry).
parent(ivan, anna).
parent(ivan, dmitry).
parent(peter, olga).
parent(oksana, ivan).
man(ivan).
man(dmitry).
man(peter).
woman(olga).
woman(anna).
woman(oksana).
married(ivan, olga).

% Правила вывода для родственных отношений
mother(X, Y) :- parent(X, Y), woman(X).
father(X, Y) :- parent(X, Y), man(X).
sister(X, Y) :- parent(Z, X), parent(Z, Y), woman(X), X\=Y.
brother(X, Y) :- parent(Z, X), parent(Z, Y), man(X), X\=Y.
grandparent(X, Z) :- parent(X, Y), parent(Y, Z).
grandmother(X, Z) :- grandparent(X, Z), woman(X).
grandfather(X, Z) :- grandparent(X, Z), man(X).
uncle(X, Y) :- brother(X, Z), parent(Z, Y).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).
cousin(X, Y) :- parent(Z, X), parent(W, Y), sibling(Z, W), X\=Y.
sibling(X, Y) :- parent(Z, X), parent(Z, Y), X\=Y.

% Дополнительные правила, например для племянницы и племянника
niece(X, Y) :- sibling(Z, Y), parent(Z, X), woman(X).
nephew(X, Y) :- sibling(Z, Y), parent(Z, X), man(X).