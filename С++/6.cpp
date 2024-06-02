/*
Даны два списка одинаковой длины, состоящие из чисел:
     (a1 a2 … aN)
     (b1 b2 … bN)
Написать функцию, которая возвратит список следующего вида:
     (abs(a1)+abs(b1)  abs(a2)+abs(b2)  …  abs(aN)+abs(bN))
*/

#include <iostream>
#include <vector>
#include <algorithm>
#include <numeric>

// Функция для вычисления абсолютного значения суммы элементов двух списков
std::vector<int> computeAbsSum(const std::vector<int>& list1, const std::vector<int>& list2) 
{
    std::vector<int> result;
    result.reserve(list1.size());

    std::transform(list1.begin(), list1.end(), list2.begin(), std::back_inserter(result),
                   [](int a, int b) {
                       return std::abs(a) + std::abs(b);
                   });

    return result;
}

int main() 
{
    std::vector<int> list1 = {1, -2, 3, -4, 5};
    std::vector<int> list2 = {6, -7, 8, -9, 10};

    std::vector<int> absSums = computeAbsSum(list1, list2);

    std::cout << "Result:";
    for (const auto& sum : absSums) 
	{
        std::cout << sum << " ";
    }
    std::cout << std::endl;

    return 0;
}