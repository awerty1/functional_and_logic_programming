% Создайте базу данных, содержащую перечень книг в библиотеке. Для каждой книги указать:  порядковый номер, автора, название, цену, год издания.
%   Записать правила для определения требуемых сведений. Каждое правило должно отвечать только на  поставленный  вопрос, не перечисляя ненужных данных.
%   Определить с помощью правил:
% а) названия книг, изданных в 1990г.
% б) авторов и названия книг, изданных после 1993г.
% в) цену книг, изданных до 1990г.

% База данных книг в библиотеке: порядковый номер, автор, название, цена, год издания
book(1, 'Толстой', 'Война и мир', 1000, 1869).
book(2, 'Достоевский', 'Преступление и наказание', 800, 1866).
book(3, 'Оруэлл', '1984', 500, 1949).
book(4, 'Хемингуэй', 'Старик и море', 700, 1952).
book(5, 'Кастанеда', 'Учение дона Хуана', 600, 1968).
book(6, 'Кинг', 'Зеленая миля', 900, 1996).
book(7, 'Роулинг', 'Гарри Поттер и философский камень', 1200, 1997).
book(8, 'Браун', 'Код да Винчи', 1100, 2003).

% Правило для определения названий книг, изданных в 1990 году
books_published_in_1990(Title) :- book(_, _, Title, _, 1990).

% Правило для определения авторов и названий книг, изданных после 1993 года
books_published_after_1993(Author, Title) :- book(_, Author, Title, _, Year), Year > 1993.

% Правило для определения цены книг, изданных до 1990 года
prices_of_books_published_before_1990(Price) :- book(_, _, _, Price, Year), Year < 1990.

% books_published_in_1990(Title).
% books_published_after_1993(Author, Title).
% prices_of_books_published_before_1990(Price).