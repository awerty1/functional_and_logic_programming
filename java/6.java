/*
Сделай с помощью функционального программирования в java

Даны два списка одинаковой длины, состоящие из чисел:
     (a1 a2 … aN)
     (b1 b2 … bN)
Написать функцию, которая возвратит список следующего вида:
     (abs(a1)+abs(b1)  abs(a2)+abs(b2)  …  abs(aN)+abs(bN))
*/

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class Main {
    public static void main(String[] args) {
		// Создаем два списка целых чисел
        List<Integer> list1 = List.of(1, -2, 3, -4, 5);
        List<Integer> list2 = List.of(6, -7, 8, -9, 10);
		
        // Вычисляем абсолютную сумму элементов на соответствующих позициях в обоих списках
        List<Integer> resultList = calculateAbsoluteSum(list1, list2);

		// Выводим на экран первый и второй список
        System.out.println("Первый список: " + list1);
        System.out.println("Второй список: " + list2);
		
		 // Выводим на экран результат - список с абсолютными суммами
        System.out.println("Результат: " + resultList);
    }

	// Метод для вычисления абсолютной суммы элементов на соответствующих позициях в двух списках
    public static List<Integer> calculateAbsoluteSum(List<Integer> list1, List<Integer> list2) {
        return IntStream.range(0, list1.size())
                .mapToObj(i -> Math.abs(list1.get(i)) + Math.abs(list2.get(i)))
                .collect(Collectors.toList());
    }
}