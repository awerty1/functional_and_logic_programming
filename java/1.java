/*
Найдите среднее арифметическое числового списка.
*/

import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
		// Создаем список numbers и инициализируем его целочисленными значениями
        List<Integer> numbers = Arrays.asList(1, 2, 3, 4, 5);
        
        // Вычисляем среднее арифметическое значений списка numbers с использованием Java Stream API
        double average = numbers.stream()
                .mapToInt(Integer::intValue) // Преобразуем каждый элемент в примитивный int
                .average() // Вычисляем среднее арифметическое значений
                .orElse(0.0); // Если среднее не может быть вычислено, возвращаем значение по умолчанию 0.0
        
		// Выводим вычисленное среднее арифметическое на экран
        System.out.println("Среднее арифметическое: " + average);
    }
}