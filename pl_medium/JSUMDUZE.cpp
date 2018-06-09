#include <string>
#include <iostream>

using namespace std;

string sum_big_ints(string bigger, string smaller)
{
    string result = "";
    string::iterator it2 = bigger.end() - 1;
    int s, r = 0;
    for (string::iterator it = smaller.end() - 1; it != smaller.begin() - 1;  it--)
    {
        s = *it + *it2 - 96 + r;
        if (s > 9)
        {
            s -= 10;
            r = 1;
        }
        else r = 0;
        result.insert(result.begin(), s + 48);
        it2--;
    }
    if (it2 == bigger.begin() - 1)
        if (r == 1)
            result.insert(result.begin(), 49);
    else
    {
        while (it2 != bigger.begin() - 1)
        {
            if (*it2 == 57 && r == 1)
                result.insert(result.begin(), 48);
            else
            {
                result.insert(result.begin(), *it2 + r);
                r = 0;
            }
            it2--;
        }
        if (r == 1)
            result.insert(result.begin(), 49);
    }
    return result;
}

int main()
{
    int t;
    cin >> t;
    string n1, n2, result;
    for (int i = 0; i < t; i++)
    {
        cin >> n1 >> n2;
        if (n1.length() >= n2.length())
            result = sum_big_ints(n1, n2);
        else
            result = sum_big_ints(n2, n1);
        cout << result << "\n";
    }
    return 0;
}
