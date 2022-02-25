
# Method without arguments

def method_without_arguments
    puts "[Method_without_arguments]"
end

method_without_arguments

# Method with arguments

def method_with_arguments(num_a, num_b)
    puts "[Method_with_arguments] num_a #{num_a} and num_b #{num_b}"
    return num_a + num_b
end

result = method_with_arguments(1, 2)
puts "[Method_with_arguments] result #{result}"