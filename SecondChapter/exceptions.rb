# begin rescue
puts "Enter a number"
number = gets.to_i

begin
    result = 10 / number
    puts "10/ #{number} = #{result}"
rescue
    puts "Error! Your number introduced was #{number}"
    exit                                                    # Stop the execution of the rest of the class
end

