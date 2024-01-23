//Given an integer N, write a program to count the number of digits in N.

//Input Format

//Example 1: Input0: N = 12345

//Example 2: Input1: N = 8394

//Constraints

//n <= 10000

//0utput Format

//Output0: 5 Explanation: N has 5 digits

//Output1: 4 Explanation: N has 4 digits

//Sample Input 0

//12345
//Sample Output 0

//5
//Sample Input 1

//876349
//Sample Output 1

//6
//Contest ends in 18 hours
//Submissions: 57
//Max Score: 10
//Difficulty: Medium
//Rate This Challenge:

    
//More
 
#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

int main() {
   int n;
    cin>>n;
    int count=0;
    do{
        n/=10;
        count++;
    }
    while(n>0);
    cout<<count;
    return 0;
}