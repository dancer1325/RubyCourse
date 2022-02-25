
# Method without arguments
def method_without_arguments
    puts "[Method_without_arguments]"
end

method_without_arguments

# Method with arguments
def method_with_arguments(num_a, num_b)
    puts "[Method_with_arguments] num_a #{num_a} and num_b #{num_b}"
    return num_a + num_b        # return It's optional to type return, because by default the last expression in the block will be returned
end
result = method_with_arguments(1, 2)
puts "[Method_with_arguments] result #{result}"

# () are optionals to use in methods
def method_without_parenthesis num_a, num_b
    puts "[Method_with_parenthesis] num_a #{num_a} and num_b #{num_b}"
    num_a + num_b               # Not necessary to indicate return keyword
end
result = method_without_parenthesis 1, 2
puts "[method_without_parenthesis] result #{result}"
