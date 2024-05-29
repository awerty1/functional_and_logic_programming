/*
Найдите среднее арифметическое числового списка.
*/

#include <iostream>
#include <vector>
#include <numeric>

int main() 
{
    std::vector<int> numbers = {1, 2, 3, 4, 5};

    double average = std::accumulate(numbers.begin(), numbers.end(), 0.0) / numbers.size();

    std::cout << "Average: " << average << std::endl;

    return 0;
}