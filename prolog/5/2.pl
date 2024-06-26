/*
3. Определить правила для расчета площади трапеции и площади треугольника. Определить, 
что больше: площадь трапеции с основаниями 3 и 6 и расстоянием между ними 4 или площадь треугольника с высотой 7, 
проведенной к стороне с длиной 5.
*/
% Правило для расчёта площади трапеции
trapezoid_area(Base1, Base2, Height, Area) :-
    Area is (Base1 + Base2) * Height / 2.
    
% Правило для расчёта площади треугольника
triangle_area(Base, Height, Area) :-
    Area is 0.5 * Base * Height.

% Заданные параметры для трапеции и треугольника
base1_trapezoid(3).
base2_trapezoid(6).
height_trapezoid(4).

base_triangle(5).
height_triangle(7).

% Расчет площадей и определение, какая из них больше
calculate_areas :-
    base1_trapezoid(Base1),
    base2_trapezoid(Base2),
    height_trapezoid(HeightTrapezoid),
    base_triangle(BaseTriangle),
    height_triangle(HeightTriangle),
    
    trapezoid_area(Base1, Base2, HeightTrapezoid, AreaTrapezoid),
    triangle_area(BaseTriangle, HeightTriangle, AreaTriangle),
    
    (AreaTrapezoid > AreaTriangle ->
        Result = 'Площадь трапеции больше, чем площадь треугольника';
        Result = 'Площадь треугольника больше, чем площадь трапеции'
    ),
    
    write('Площадь трапеции: '), write(AreaTrapezoid), nl,
    write('Площадь треугольника: '), write(AreaTriangle), nl,
    write(Result).

% Правило process для запуска вычислений и завершения программы
process :- 
    calculate_areas,
    halt.

% Главное правило main для начала выполнения программы
main :-
    process.

:- main.