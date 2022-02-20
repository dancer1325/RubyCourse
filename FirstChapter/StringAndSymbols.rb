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

# String's methods
str = 'Ruby is great'
# .upcase   -- Text in uppercase --
puts " Uppercase: #{str.upcase}"
# .reverse  -- Reverse text --
puts " Reverse: #{str.reverse}"
# .include  -- Check if an object contains an array of characters, being case sensitive --
puts "Check if it includes Ruby word: #{str.include?('Ruby')}"
puts "Check if it includes RUBY word: #{str.include?('RUBY')}"
puts "Check if it includes Java word: #{str.include?('Java')}"
# .start_with  -- Check if an object starts with an array of characters, being case sensitive --
puts "Check if it starts with Ruby word: #{str.start_with?('Ruby')}"
puts "Check if it starts with RUBY word: #{str.start_with?('RUBY')}"
# .size  -- Get # of characters of the string --
puts "# of characters: #{str.size}"
# .empty  -- Check if the string is empty --
puts "Check if str is empty: #{str.empty?}"
no_whitespace = ""
puts "If no whitespace at all isn't considered as empty: #{no_whitespace.empty?}"
whitespaces = "   "
puts "Whitespaces aren't considered as empty: #{whitespaces.empty?}"

# Comparing strings
second_str = 'Ruby is great'
third_str = str
# ==     -- Comparison by value --
puts "Comparison str == second_string #{str == second_string}"
puts "Comparison str == second_string.upcase, checking that it's case sensitive #{str == second_string.upcase}"
puts "Comparison str == third_str #{str == third_str}"
puts "Comparison str == third_str.upcase, checking that it's case sensitive #{str == third_str.upcase}"
# .==    -- Comparison by value --
puts "Comparison str .== second_string #{str .== second_string}"
puts "Comparison str .== second_string.upcase , checking that it's case sensitive #{str .== second_string.upcase}"
puts "Comparison str .== third_string #{str .== third_string}"
puts "Comparison str .== third_string.upcase , checking that it's case sensitive #{str .== third_string.upcase}"
# equal  -- Comparison by object, not by value --
puts "Comparison str.equal?(second_str) #{str.equal?(second_str)}"
puts "Comparison str.equal?(third_str) #{str.equal?(third_str)}"