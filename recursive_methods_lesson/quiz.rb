# Define a recursive function that finds the factorial of a number.
def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end