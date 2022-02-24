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
    puts "[Case] Your answer was #{answer}"
    exit                        # Not continue checking the rest
when "Not"                      # Valid either simple or double quotes
    puts "[Case] Your answer was #{answer}"
    exit                        # Not continue checking the rest
else
    puts "[Case] Unknown answer #{answer}"
end

# Previous code can be done by multiples if and elsif
if answer == 'Yes'
    puts "[If-Elsif-Else] Your answer was #{answer}"
    exit
elsif answer == "Not"
    puts "[If-Elsif-Else] Your answer was #{answer}"
    exit
else
    puts "[If-Elsif-Else] Unknown answer #{answer}"
end

