/*
Получить список состоящий из элементов исходного списка поделенных на 2.
*/

#include <iostream>
#include <vector>
#include <algorithm>

int main() 
{
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    std::vector<double> dividedByTwo(numbers.size());

    std::transform(numbers.begin(), numbers.end(), dividedByTwo.begin(), [](int x) { return x / 2.0; });

    std::cout << "Original List: ";
    for (int num : numbers)
	{
        std::cout << num << " ";
    }
    std::cout << std::endl;

    std::cout << "Divided by Two List: ";
    for (double num : dividedByTwo) 
	{
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}