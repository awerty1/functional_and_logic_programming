/*
Даны два множества, представленных списками:
     (a1 a2 … aN)
     (b1 b2 … bМ)
Получить декартово произведение двух множеств:
     ((a1 b1)  (a1 b2) … (а1 bM) (a2 b1) (a2 b2) … (a2 bM) …  (aN bM))
*/

import java.util.List;
import java.util.stream.Collectors;

public class Main {
    public static void main(String[] args) {
        List<Integer> set1 = List.of(1, 2, 3);
        List<Integer> set2 = List.of(4, 5, 6);
		
		 // Вычисляем декартово произведение между set1 и set2
        List<List<Integer>> cartesianProduct = calculateCartesianProduct(set1, set2);

		// Выводим на экран первое и второе множества
        System.out.println("Первое множество: " + set1);
        System.out.println("Второе множество: " + set2);
		
		// Выводим на экран декартово произведение
        System.out.println("Декартово произведение: " + cartesianProduct);
    }
	
	// Метод для вычисления декартова произведения между двумя множествами
    public static List<List<Integer>> calculateCartesianProduct(List<Integer> set1, List<Integer> set2) {
        return set1.stream() // Преобразует список set1 в поток элементов.
                .flatMap(elem1 -> set2.stream()
                        .map(elem2 -> List.of(elem1, elem2)))
                .collect(Collectors.toList());
    }
}