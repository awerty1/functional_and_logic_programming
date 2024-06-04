/*
Даны два множества, представленных списками:
     (a1 a2 … aN)
     (b1 b2 … bМ)
Получить декартово произведение двух множеств:
     ((a1 b1)  (a1 b2) … (а1 bM) (a2 b1) (a2 b2) … (a2 bM) …  (aN bM))
*/

#include <iostream>
#include <vector>
#include <algorithm>
#include <iterator>

// Функция для вычисления декартова произведения двух множеств
std::vector<std::pair<int, int>> cartesianProduct(const std::vector<int>& set1, const std::vector<int>& set2) 
{
    std::vector<std::pair<int, int>> result;

    for (int a : set1) 
	{
        std::transform(set2.begin(), set2.end(), std::back_inserter(result),
            [a](int b) 
			{
                return std::make_pair(a, b);
            });
    }

    return result;
}

int main() 
{
    std::vector<int> set1 = {1, 2, 3};
    std::vector<int> set2 = {4, 5};

    std::vector<std::pair<int, int>> cartesian = cartesianProduct(set1, set2);

    std::cout << "Cartesian Product:" << std::endl;
    for (const auto& pair : cartesian) 
	{
        std::cout << "(" << pair.first << ", " << pair.second << ") ";
    }
    std::cout << std::endl;

    return 0;
}