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



