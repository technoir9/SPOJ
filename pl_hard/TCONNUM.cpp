#include <iostream>
#include <string>

using namespace std;

string convert(string n, int _r, int s)
{
    string result = "";
    int sum = 0;
    int r = 1;
    for (int i = n.length() - 1; i >= 0; i--)
    {
        if (n.at(i) < 58)
            sum += (n.at(i) - 48) * r;
        else
            sum += (n.at(i) - 55) * r;
        r *= _r;
    }
    int rem;
    while (sum != 0)
    {
        rem = sum % s;
        sum /= s;
        if (rem <= 9)
            result.insert(result.begin(), rem + 48);
        else
            result.insert(result.begin(), rem + 55);
    }
    return result;
}

int main()
{
    int N, r, s; // r-base represantation into s-base representation
    string n;
    cin >> N;
    for (int i = 0; i < N; i++)
    {
        cin >> n >> r >> s;
        cout << convert(n, r, s) << endl;
    }
}
