 @REM Given a number N reverse the number and print it.
 @REM Example 1: Input: N = 123 Output: 321 Explanation: The reverse of 123 is 321

@REM Example 2: Input: N = 234 Output: 432 Explanation: The reverse of 234 is 432

@REM @REM Input Format

 @REM 123

 @REM Constraints

 @REM N <= 1000

 @REM Output Format

 @REM 321

 @REM Sample Input 0

 @REM 123
 @REM Sample Output 0

 @REM 321
#include <iostream>
using namespace std;

int main() {

  int n, reversed_number = 0, remainder;

 
  cin >> n;

  while(n != 0) {
    remainder = n % 10;
    reversed_number = reversed_number * 10 + remainder;
    n /= 10;
  }

  cout  << reversed_number;

  return 0;
}