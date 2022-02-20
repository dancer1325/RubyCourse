# Strings

# Declare Strings
# 1. ''
first_string = 'first_string'
# 2. ""
second_string = "second_string"

# Interpolation
puts "Hello #{first_string} and #{second_string}"
puts 'Hello #{first_string} and #{second_string}' # It doesn't evaluate the expression because '' are used
puts "2 + 2 = #{2+2}"
puts '2 + 2 = #{2=2}'                             # It doesn't evaluate the expression because '' are used

# Although 2 string variables have got the same value, the object itself is different
# === Point to different address memory
hello = "Hello"
second_hello = "Hello"
puts hello.object_id
puts second_hello.object_id