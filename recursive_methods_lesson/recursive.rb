# Define a recursive function that takes an argument n and prints "n bottles of 
# beer on the wall", "(n-1) bottles of beer on the wall", ..., 
# "no more bottles of beer on the wall".
def bottles(n)
  if n == 0 
    puts "No more bottles of beer."
    return
  else
    puts "#{n} bottles of beer."
    bottles(n-1)
  end
end

# Define a recursive function that finds the factorial of a number.
# n! = n * (n-1) * (n-2) ...
def factorial(n)
  if n == 0
    return 1
  else
    n * factorial(n-1)
  end
end

# Define a recursive function that returns true if a string is a palindrome and 
# false otherwise.
def palindrome(str)
  if str == ""
    return true
  elsif str[0] == str[-1]
    palindrome(str[1..-2])
  else 
    false
  end
end

# Define a recursive function that flattens an array. The method should convert 
# [[1, 2], [3, 4]] to [1, 2, 3, 4] and [[1, [8, 9]], [3, 4]] to [1, 8, 9, 3, 4].
def flatten(array, result = [])
  array.each do |element|
    if element.kind_of?(Array)
      flatten(element, result)
    else
      result << element
    end
  end 
  result
end

p flatten([1, [2, 3], 4, [5]])