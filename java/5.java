/*
Написать функцию, которая производит следующую операцию над числовым списком (можно использовать встроенные функции):
     (a1 a2 … aN)  ->   (a1! a2! … aN!)
*/

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
		// Создаем список целых чисел
        List<Integer> numbers = List.of(1, 2, 3, 4, 5);
		// Вычисляем значения факториалов для чисел из списка
        List<Long> factorials = calculateFactorials(numbers);
        
		// Выводим исходный список на экран
        System.out.println("Исходный список: " + numbers);
		// Выводим список значений факториалов на экран
        System.out.println("Список со значениями факториалов: " + factorials);
    }

	// Метод для вычисления факториала числа
    public static List<Long> calculateFactorials(List<Integer> numbers) {
        return numbers.stream()
                .map(Main::factorial)
                .collect(Collectors.toList());
    }

    // Рекурсивный метод для вычисления факториала числа
    public static long factorial(int num) {
        if (num == 0) {
            return 1;
        }
        return num * factorial(num - 1);
    }
}