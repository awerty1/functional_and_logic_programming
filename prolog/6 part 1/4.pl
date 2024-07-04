% Информация о длинах дорог между населенными пунктами
distance(city1, city2, 50).
distance(city2, city3, 30).
distance(city1, city3, 80).
% Добавьте еще правила distance(city1, city3, 80). по мере необходимости

% Определение правила путь
path(X, Y, Distance) :- distance(X, Y, Distance).
path(X, Y, Distance) :- distance(X, Z, D1), path(Z, Y, D2), Distance is D1 + D2.

% Пример использования:
% Проверка, можно ли добраться из city1 в city3 и каково расстояние
%?- path(city1, city3, Distance).
