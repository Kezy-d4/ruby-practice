# The Collatz conjecture applies to positive integers and speculates that it
# is always possible to get "back to 1" if you follow these steps:
#   - if n is 1, stop.
#   - Otherwise, if n is even, repeat this process on n/2.
#   - Otherwise, if n is odd, repeat this process on 3n + 1.
#   
# Write a recursive function collatz(n) that calculates how many steps it takes
# to get to 1 if you start from n and recurse as indicated above.

def collatz(n)
  return 0 if n == 1

  return 1 + collatz(n / 2) if n.even?
  return 1 + collatz(3 * n + 1) if n.odd?
end

p collatz(5)