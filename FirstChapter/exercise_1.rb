puts 'Welcome to the exercise 1'

print 'Introduce your name: '
name = gets.chomp
print 'Introduce your last name: '
last_name = gets.chomp

print "Hello #{name} #{last_name}"

puts 'Please, introduce a number of 4 digits: '
number = gets.chomp
thousands = number % 1000 / 100
hundreds = number % 1000 % 100 / 10
units = number % 1000 % 100 % 10

puts "thousands #{thousands}"
puts "hundreds #{hundreds}"
puts "units #{units}"