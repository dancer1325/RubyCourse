puts 'Welcome to the exercise 1'

print 'Introduce your name: '
name = gets.chomp
print 'Introduce your last name: '
last_name = gets.chomp

puts "Hello #{name} #{last_name}"

print 'Please, introduce a number of 4 digits: '
number = gets.to_i   # chomp Returns a new string.

thousands = number % 1000 / 100
hundreds = number % 1000 % 100 / 10
units = number % 1000 % 100 % 10

puts "thousands #{thousands}"
puts "hundreds #{hundreds}"
puts "units #{units}"