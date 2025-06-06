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

# Define a recursive function that takes an argument n and returns the fibonacci
# value of that position. The fibonacci sequence is 0, 1, 1, 2, 3, 5, 8, 13, 21...
# So fib(5) should return 5 and fib(6) should return 8.
def fib(n)
  if n == 0
    0
  elsif n == 1
    1
  else
    fib(n-1) + fib(n-2)
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

# Use the roman_mapping hash to define a recursive method that converts an 
# integer to a Roman numeral.
# roman_mapping = {
#   1000 => "M",
#   900 => "CM",
#   500 => "D",
#   400 => "CD",
#   100 => "C",
#   90 => "XC",
#   50 => "L",
#   40 => "XL",
#   10 => "X",
#   9 => "IX",
#   5 => "V",
#   4 => "IV",
#   1 => "I"
# }
def integer_to_roman(roman_mapping, number, result = "")
  return result if number == 0
  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << roman_mapping[divisor] * quotient
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

# Use the roman_mapping hash to define a recursive method that converts a Roman 
# numeral to an integer.
roman_mapping = {
  "M" => 1000,
  "CM" => 900,
  "D" => 500,
  "CD" => 400,
  "C" => 100,
  "XC" => 90,
  "L" => 50,
  "XL" => 40,
  "X" => 10,
  "IX" => 9,
  "V" => 5,
  "IV" => 4,
  "I" => 1
}
def roman_to_integer(roman_mapping, str, result = 0)
  return result if str.empty?
  roman_mapping.keys.each do |roman|
    if str.start_with?(roman)
      result += roman_mapping[roman]
      str = str.slice(roman.length, str.length)
      return roman_to_integer(roman_mapping, str, result)
    end
  end
end


