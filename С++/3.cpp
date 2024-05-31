/*
Найти сумму всех числовых элементов списка.
*/

#include <iostream>
#include <vector>
#include <ranges>
#include <numeric>
#include <string>
#include <type_traits>

template <typename T>
bool is_number(const T& value) 
{
    if constexpr (std::is_arithmetic<T>::value) 
	{
        return true;
    } 
	else if constexpr (std::is_convertible<T, std::string>::value) 
	{
        return !value.empty() && std::all_of(value.begin(), value.end(), ::isdigit);
    } 
	else 
	{
        return false;
    }
}

int main() 
{
    std::vector mixedList = {1, "not a number", 2, 3, "123", 4, 5, "six"};

    int total = std::accumulate(mixedList | std::views::filter(is_number), 0);

    std::cout << "List of elements: ";
    for (const auto& item : mixedList) 
	{
        if (is_number(item)) 
		{
            std::cout << item << " ";
        }
    }
    std::cout << std::endl;

    std::cout << "Sum of all numeric elements: " << total << std::endl;

    return 0;
}