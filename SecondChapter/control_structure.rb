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
when 'Yes'
    puts "Your answer was #{answer}"
    exit                        # Not continue checking the rest
when "Not"                      # Valid either simple or double quotes
    puts "Your answer was #{answer}"
    exit                        # Not continue checking the rest
else
    puts "Unknown answer #{answer}"
end


