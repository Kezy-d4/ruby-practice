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

# Define a recursive function that takes an argument n and prints 
# "n bottles of beer on the wall", "(n-1) bottles of beer on the wall", ..., 
# "no more bottles of beer on the wall".
def bottles_of_beer(n)
  return unless n.class == Integer && n >= 0

  if n == 0
    puts "no more bottles of beer."
  else
    puts n == 1 ? "#{n} bottle of beer." : "#{n} bottles of beer."
    bottles_of_beer(n-1)
  end
end
