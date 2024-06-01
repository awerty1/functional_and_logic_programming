/*
Написать функцию для удаления из заданного списка всех числовых атомов, равных нулю. 
*/

#include <iostream>
#include <vector>
#include <algorithm>
#include <functional>
#include <string>
#include <sstream>

template<typename T>
bool isNumber(const T& value) 
{
    if constexpr (std::is_arithmetic<T>::value) 
	{
        return true;
    } 
	else if constexpr (std::is_convertible<T, std::string>::value) 
	{
        std::string strValue = std::to_string(value);
        return !strValue.empty() && std::all_of(strValue.begin(), strValue.end(), ::isdigit);
    } 
	else 
	{
        return false;
    }
}

template <typename T>
std::vector<T> removeZeroNumerics(std::vector<T> vec) 
{
    vec.erase(std::remove_if(vec.begin(), vec.end(), [](const T& value) 
	{
        return isNumber(value) && value == 0;
    }), vec.end());
    return vec;
}

int main() 
{
    std::vector mixedList = {1, "not a number", 0, 2, 3, "123", 0, 4, 5, "six"};

    std::cout << "Original list:";
    for (const auto& item : mixedList) 
	{
        std::cout << item << " ";
    }
    std::cout << std::endl;

    mixedList = removeZeroNumerics(mixedList);

    std::cout << "List after removing zero numeric atoms:";
    for (const auto& item : mixedList) 
	{
        std::cout << item << " ";
    }
    std::cout << std::endl;

    return 0;
}