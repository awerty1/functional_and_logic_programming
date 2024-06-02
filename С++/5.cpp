/*
Написать функцию, которая производит следующую операцию над числовым списком (можно использовать встроенный в Python модуль math и функцию factorial):
     (a1 a2 … aN)  ->   (a1! a2! … aN!)
*/

#include <iostream>
#include <vector>
#include <functional>
#include <numeric>

// Функция для вычисления факториала числа
int factorial(int n) 
{
    if (n == 0) 
	{
        return 1;
    } 
	else 
	{
        return n * factorial(n - 1);
    }
}

// Функция для преобразования списка чисел в список факториалов
std::vector<int> computeFactorials(const std::vector<int>& numbers) 
{
    std::vector<int> factorials;
    factorials.reserve(numbers.size());

    std::transform(numbers.begin(), numbers.end(), std::back_inserter(factorials), [](int num) 
	{
        return factorial(num);
    });

    return factorials;
}

int main() 
{
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    std::cout << "Original numbers:";
    for (const auto& num : numbers) 
	{
        std::cout << num << " ";
    }
    std::cout << std::endl;

    std::vector<int> factorials = computeFactorials(numbers);

    std::cout << "Factorials:";
    for (const auto& factorial : factorials) 
	{
        std::cout << factorial << " ";
    }
    std::cout << std::endl;

    return 0;
}

