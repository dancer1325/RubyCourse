# Numbers
num = 99
num = 99.6  # Floating point
puts "num.round #{num.round}"  # Round a number to the unit
puts "num.zero #{num.zero?}"    # Check if the number is zero

puts "1 + 1 = #{1 + 1}"       # Ruby syntax indicates to add a whitespace previous and pot to each operator
puts "#1.+(1) = {1.+(1)}"     # Arithmetical operator as method
puts "16 / 5 = #{16 / 5}"
puts "16./(5) = #{16./(5)}"     # Arithmetical operator as method

puts "16.0 / 5 = #{16.0 / 5}"  # If one of the numbers is floating point --> The result is a floating point

puts "15 - 5 = #{15 - 5}"      # Subtraction
puts "15 * 2 = #{15 * 2}"      # Multiplication
puts "15 / 5 = #{15 / 5}"      # Split
puts "16 % 2 = #{16 % 2}"      # Remainder
puts "5 ** 2 = #{5 ** 2}"      # Power

first_number = 2
second_number = 4
third_number = 1

puts "first_number == second_number #{first_number == second_number}"
puts "first_number.==(second_number) #{first_number.==(second_number)}"  # == is a method
puts "first_number != second_number #{first_number != second_number}"
puts "first_number.!=(second_number) #{first_number.!=(second_number)}"  # != is a method
puts "first_number > second_number #{first_number > second_number}"
puts "first_number.>(second_number) #{first_number.>(second_number)}"  # > is a method
puts "first_number < second_number #{first_number < second_number}"
puts "first_number.<(second_number) #{first_number.>(second_number)}"  # < is a method

# Assignment with arithmetic operations
# Note: Take care in the next examples, because we are reassigning continuously
puts "first_number += first_number #{first_number += first_number}"
puts "first_number -= third_number #{first_number -= third_number}"
puts "first_number *= first_number #{first_number *= first_number}"
puts "first_number /= first_number #{first_number /= first_number}"
puts "first_number %= first_number #{first_number %= first_number}"
puts "first_number **= first_number #{first_number **= first_number}"

# Multiple assignments
a, b, c = 10, 20, 30
puts "a #{a}"
puts "b #{b}"
puts "c #{c}"
# Assignment by array's element
a, b, c = [1, 2, 3]
puts "a #{a}"
puts "b #{b}"
puts "c #{c}"

# Logical operators
# 1. and   /   &&
a = true and false
puts "true and false #{true and false}"
puts "a #{a}"   # ='s priority > and's priority
b = true && false
puts "true && false #{true && false}"
puts "b #{b}"  # ='s priority < &&'s priority
# 2. or   /   ||
a = true or false
puts "true or false #{true or false}"
puts "a #{a}"   # ='s priority > or's priority
b = true || false
puts "true || false #{true || false}"
puts "b #{b}"  # ='s priority < ||'s priority