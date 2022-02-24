# if elseif else

puts "Introduce your age "
age = gets.to_i

if age > 18
    puts "You are an adult"
elsif age > 10 && age < 18
    puts "You are a teenager"
else
    puts "You are a baby"
end


# unless
# It's equivalent to !if

# A) With !if
# A.1] Block Code
if !(age > 18)
    puts "[Block Code] Forbidden"
end
# A.2] In 1! line
puts "[1! line] Forbidden" if !(age > 18)

# B) With unless
# B.1] Block Code
unless (age > 18)
    puts "[Block Code] Forbidden"
end
# B.2]  In 1! line
puts "[1! line] Forbidden" unless (age > 18)

# case
# === Switch
puts "Exit the program? A) Yes or B) Not : "
#answer = gets                  # It doesn't work. Why?
answer = gets.chomp
case answer
when 'Yes', 'y', 'Y', 'yes'     # Several possible values can be added
    puts "[Case] Your answer was #{answer}"
    exit                        # Not continue checking the rest. Several possible values can be added
when "Not", 'not', 'n', 'N'                      # Valid either simple or double quotes
    puts "[Case] Your answer was #{answer}"
    exit                        # Not continue checking the rest
else
    puts "[Case] Unknown answer #{answer}"
end

# Previous code can be done by multiples if and elsif
puts "Exit the program? A) Yes or B) Not : "
second_answer = gets.chomp
if second_answer == 'Yes'
    puts "[If-Elsif-Else] Your answer was #{second_answer}"
    exit
elsif second_answer == "Not"
    puts "[If-Elsif-Else] Your answer was #{second_answer}"
    exit
else
    puts "[If-Elsif-Else] Unknown answer #{second_answer}"
end

# Looping

#loop
# They will executed forever
# 1) do BlockCode end
# loop { puts "looping forever" }
# 2) {BlockCode}
# loop do
#     puts "looping forever"
# end

# With break
# Stop the iteration through the elements of the loop
n = 1
loop do
    puts "[Loop_with_break] n #{n}"
    n += 1
    puts "[Loop_with_break] n #{n}"
    break if n > 9              # break BooleanExpressionToEvaluate
end

# With next
# Jumps to the next element of the loop
n = 1
loop do
    puts "[Loop_with_next] n #{n}"
    n += 1
    puts "[Loop_with_next] n #{n}"
    next unless n == 10
    break                       # break directly
end

#while
# It's a looping conditional
# 1) BlockCode end
n = 1
while n < 10
    puts "[Loop_with_while_BlockCode_end] n #{n}"
    n += 1
    puts "[Loop_with_while_BlockCode_end] n #{n}"
    next unless n == 100
    break                       # break directly
end

# 2) {BlockCode}
n = 1 while n < 10              # In 1! line of code

