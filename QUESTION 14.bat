@REM Two words are anagrams of one another if their letters can be rearranged to form the other word.

@REM Given a string, split it into two contiguous substrings of equal length. Determine the minimum number of characters to change to make the two substrings into anagrams of one another.

@REM Example

@REM Break  into two parts: 'abc' and 'cde'. Note that all letters have been used, the substrings are contiguous and their lengths are equal. Now you can change 'a' and 'b' in the first substring to 'd' and 'e' to have 'dec' and 'cde' which are anagrams. Two changes were necessary.

@REM Function Description

@REM Complete the anagram function in the editor below.

@REM anagram has the following parameter(s):

@REM string s: a string
@REM Returns

@REM int: the minimum number of characters to change or -1.
@REM Input Format

@REM The first line will contain an integer, , the number of test cases.
@REM Each test case will contain a string .

@REM Constraints


@REM  consists only of characters in the range ascii[a-z].
@REM Sample Input

@REM 6
@REM aaabbb
@REM ab
@REM abc
@REM mnop
@REM xyyx
@REM xaxbbbxx
@REM Sample Output

@REM 3
@REM 1
@REM -1
@REM 2
@REM 0
@REM 1
@REM Explanation

@REM Test Case #01: We split  into two strings ='aaa' and ='bbb'. We have to replace all three characters from the first string with 'b' to make the strings anagrams.

@REM Test Case #02: You have to replace 'a' with 'b', which will generate "bb".

@REM Test Case #03: It is not possible for two strings of unequal length to be anagrams of one another.

@REM Test Case #04: We have to replace both the characters of first string ("mn") to make it an anagram of the other one.

@REM Test Case #05:  and  are already anagrams of one another.

@REM Test Case #06: Here S1 = "xaxb" and S2 = "bbxx". You must replace 'a' from S1 with 'b' so that S1 = "xbxb".

@REM Submissions: 157
@REM Max Score: 25
@REM Difficulty: Easy
@REM Rate This Challenge:

    
@REM More
 
#include <iostream>
#include <string>
#include <map>

using namespace std;

int getChangesToAnagram(string s1, string s2) {
    int total, N1;
    int N2 = s2.size();
    map<char, int> charCount;

    total = N1 = s1.size();

    if (N1 != N2) return -1;

    for (int i = 0; i < N2; i++)
        charCount[s2[i]]++;

    for (int i = 0; i < N1; i++) {
        if (charCount[s1[i]] > 0) {
            total--;
            charCount[s1[i]]--;
        }
    }

    return total;
}

int main() {
    int N;
    cin >> N;

    for (int i = 0; i < N; i++) {
        string s;
        cin >> s;
        cout << getChangesToAnagram(s.substr(0, s.size() / 2), s.substr(s.size() / 2)) << endl;
    }
}