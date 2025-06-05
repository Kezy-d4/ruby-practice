# Define a recursive function that finds the factorial of a number.
def factorial(n)
  n == 0 ? 1 : n * factorial(n-1)
end

# Define a recursive function that returns true if a string is a palindrome and 
# false otherwise.
def palindrome(string)
  if string.length == 1 || string.length == 0
    true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      false
    end
  end
end