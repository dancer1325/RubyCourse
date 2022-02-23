puts 'Welcome to the exercise 3'

puts "Please choose a number of your desired country to reverse!"
puts ' 1 - spain'
puts ' 2 - france'
puts ' 3 - uk'
puts ' 4 - germany'

# Ways to group the entries
# 1) Via array
country_array = ["spain", "france", "uk", "germany"]

# 2) Via hash
# country_hash = {1 "spain", 2 "france", 3 "uk", 4 "germany" } # It's not valid this way to define a hash
country_hash = {1 => "spain", 2 => "france", 3 => "uk", 4 => "germany" }

chosen_key = gets.to_i

chosen_value_by_array = country_array[chosen_key - 1]
chosen_value_by_hash = country_hash[chosen_key]

puts " Chosen key is #{chosen_key} whose reverse value is by array #{chosen_value_by_array.reverse} and by hash #{chosen_value_by_hash.reverse}"
