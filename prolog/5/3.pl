% Правило для расчета площади трапеции
trapezoid_area(Base1, Base2, Height, Area) :-
    Area is (Base1 + Base2) * Height / 2.

% Правило для расчета площади треугольника
triangle_area(Height, Base, Area) :-
    Area is 0.5 * Height * Base.

% Сравнение площадей трапеции и треугольника
compare_areas(TrapezoidBase1, TrapezoidBase2, TrapezoidHeight, TriangleBase, TriangleHeight, LargerArea) :-
    trapezoid_area(TrapezoidBase1, TrapezoidBase2, TrapezoidHeight, TrapezoidArea),
    triangle_area(TriangleHeight, TriangleBase, TriangleArea),
    (TrapezoidArea > TriangleArea -> LargerArea = 'Трапеция больше треугольника' ;
                                    LargerArea = 'Треугольник больше трапеции').

% Пример использования правил для заданных параметров
:- compare_areas(3, 6, 4, 5, 7, Result), write(Result).
