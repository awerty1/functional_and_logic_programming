% Создайте базу данных, содержащую информацию о студентах вашей группы (ФИО, день, месяц, год рождения, пол). Выполните запросы к базе:
% а) найти всех юношей в группе;
% б) найти всех девушек в группе;
% в) найти всех студентов, родившихся летом;
% г) найти студента, у которого сегодня день рождения;
% е) определить, сколько лет исполнится в этом году каждому студенту

% Факты о студентах группы
student(alex, 10, 5, 2000, male).
student(anna, 15, 8, 2001, female).
student(nikolay, 20, 4, 1999, male).
student(svetlana, 5, 6, 2000, female).
student(georg, 27, 3, 1999, male).

% Предикаты для выполнения запросов
male_student(Name) :- student(Name, _, _, _, male).
female_student(Name) :- student(Name, _, _, _, female).
summer_born(Student) :- student(Student, _, Month, _, _), Month >= 6, Month =< 8.
current_birthday(Student) :- student(Student, Day, Month, _, _), Day == 27, Month == 3. 

years_old(Name, Age) :- student(Name, _, _, Year, _), get_current_year(CurrentYear), Age is CurrentYear - Year.

get_current_year(2024). % Предположим, что текущий год - 2024


% Найти всех юношей в группе
%?- male_student(Name).
% Найти всех девушек в группе
%?- female_student(Name).
% Найти всех студентов, родившихся летом
%?- summer_born(Student).
% Найти студента, у которого сегодня день рождения
%?- current_birthday(Student).
% Определить, сколько лет исполнится в этом году каждому студенту
%?- years_old(Name, Age).
