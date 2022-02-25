# begin rescue ensure
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
ensure
    puts "Try done"
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

# Raise (=== throw) errors
def raise_errors(number)
    raise ArgumentError, "Need a number < 10" if number > 10     # Second argument is the message to throw in the exception
end

raise_errors(number)

# retry
# Into rescue block of code, to set a condition to launch all from begin block of code
def try (n_times)
    yield                               # Normally here it would be another method
rescue Exception => e
    n_times -= 1
    if n_times > 0
        puts "Error #{e}. Retry!"
        retry                           # Launch from begin
    end
end

try(3) { method(number) }
