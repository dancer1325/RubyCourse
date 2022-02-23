puts 'Welcome to the exercise 4'

puts 'Introduce your number DNI (without letter): '

dni_number = gets.to_i

relation_remainder_letter = { 0 => "T", 1 => "R", 2 => "W", 3 => "A", 4 => "G", 5 => "M", 6 => "Y", 7 => "F", 8 => "P",
 9 => "D", 10 => "X", 11 => "B", 12 => "N", 13 => "J", 14 => "Z", 15 => "S", 16 => "Q", 17 => "V", 18 => "H", 19 => "L",
   20 => "C", 21 => "K", 22 => "E"}

corresponding_dni_letter = relation_remainder_letter[dni_number % 23]

puts "Your complete DNI is #{dni_number}#{corresponding_dni_letter}"