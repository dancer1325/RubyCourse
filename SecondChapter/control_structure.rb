# if elseif else

puts "Introduce your age "
age = gets.to_i

if age > 18
    puts "You are an adult"
elseif age > 10 && age < 18
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


