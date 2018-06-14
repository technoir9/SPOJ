#include <iostream>

int main()
{
    std::string tab, line;
    while (getline (std::cin, line))
    {
        tab += line + "\n";
    }
    int klucz = 3;

    for (int i=0; i<tab.length(); ++i)
    {
        if (tab.at(i) == ' ')
            continue;
        tab.at(i) = tab.at(i) + klucz;
        if (tab.at(i) > 'Z')
            tab.at(i) -= 26;
    }

    std::cout << tab;
    return 0;
}
