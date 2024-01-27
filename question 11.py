# Kristen loves playing with and comparing numbers. She thinks that if she takes two different positive numbers, the one whose digits sum to a larger number is better than the other. If the sum of digits is equal for both numbers, then she thinks the smaller number is better. For example, Kristen thinks that  is better than  and that  is better than .

# Given an integer, , can you find the divisor of  that Kristin will consider to be the best?

# Input Format

# A single integer denoting .

# Constraints

# Output Format

# Print an integer denoting the best divisor of .

# Sample Input 0

# 12
# Sample Output 0

# 6
# Explanation 0

# The set of divisors of  can be expressed as . The divisor whose digits sum to the largest number is  (which, having only one digit, sums to itself). Thus, we print  as our answer


 def diviseurs(n):
     div = [1]
     i = 2
     while i * i <= n:
         q, r = divmod(n, i)
         if r == 0:
             div.append(i)
             if i != q:
                 div.append(q)
         i += 1
     if n != 1:
         div.append(n)
     return div


 n = int(input())
 r = -max((sum(int(i) for i in str(d)), -d) for d in diviseurs(n))[1]
 print(r)