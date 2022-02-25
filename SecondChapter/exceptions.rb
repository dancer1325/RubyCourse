# begin rescue
puts "Enter a number"
number = gets.to_i

begin
    result = 10 / number
    puts "10/ #{number} = #{result}"
rescue ZeroDivisionError                                    # rescue a specific exception
    puts "ZeroDivisionError! Your number introduced was #{number}"
    exit
rescue
    puts "Error! Your number introduced was #{number}"
    exit                                                    # Stop the execution of the rest of the class
end

# rescue without begin
# def method                     # If you don't pass the variable, it's going to throw an error, since it's another scope
def method(number)
    result = 10 / number
    puts "[method] 10/ #{number} = #{result}"
rescue ZeroDivisionError                                    # rescue a specific exception
    puts "[method] ZeroDivisionError! Your number introduced was #{number}"
    exit
rescue
    puts "[method] Error! Your number introduced was #{number}"
    exit                                                    # Stop the execution of the rest of the class
end

method(number)      # Invoke the method