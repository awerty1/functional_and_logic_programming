/*
Написать функцию для удаления из заданного списка всех числовых атомов, равных нулю. 
*/

import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
		// Создаем список mixedList, который может содержать объекты различных типов
        List<Object> mixedList = new ArrayList<>();
		
		// Добавляем элементы различных типов в список
        mixedList.add(1);
        mixedList.add(0);
        mixedList.add("two");
        mixedList.add(0.0);
        mixedList.add("five");

		 // Удаляем элементы, которые являются числовыми и равны нулю
        mixedList.removeIf(n -> n instanceof Number && ((Number) n).doubleValue() == 0);

		// Выводим список после удаления элементов на экран
        System.out.println("Список после удаления числовых атомов, равных нулю: " + mixedList);
    }
}