/*
Получить список состоящий из элементов исходного списка поделенных на 2.
*/

import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
		// Создаем исходный список originalList с целочисленными значениями
        List<Integer> originalList = Arrays.asList(1, 2, 3, 4, 5);

		// Преобразуем каждый элемент списка путем деления на 2.0 и сохраняем результат в новом списке dividedBy2List
        List<Double> dividedBy2List = originalList.stream()
                .map(n -> n / 2.0) // Преобразуем каждый элемент путем деления на 2.0
                .collect(Collectors.toList()); // Собираем результаты в новый список

		// Выводим новый список, содержащий элементы исходного списка, деленные на 2.0
        System.out.println(dividedBy2List);
    }
}
