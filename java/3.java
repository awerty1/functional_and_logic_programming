/*
Найти сумму всех числовых элементов списка.
*/

import java.util.Arrays;
import java.util.List;

public class Main {
    public static void main(String[] args) {
		// Создаем список mixedList, инициализируя его значениями через Arrays.asList
        List<Object> mixedList = Arrays.asList(1, "two", 3, 4.0, "five");

		// Вычисляем сумму всех числовых элементов списка с помощью Stream API
        int sum = mixedList.stream()
                .filter(n -> n instanceof Number) // Фильтруем только числовые элементы
                .mapToInt(n -> ((Number) n).intValue()) // Преобразуем их к целочисленному значению
                .sum(); // Вычисляем сумму

		// Выводим на экран сумму всех числовых элементов списка
        System.out.println("Сумма всех числовых элементов списка: " + sum);
    }
}