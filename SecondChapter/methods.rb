
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

# * to pass any number of arguments
def method_with_any_number_of_arguments *arguments
    puts arguments
    arguments.sum
end
result = method_with_any_number_of_arguments 1, 2, 3
puts "[method_with_any_number_of_arguments] result #{result}"

# Add default value to the arguments
def method_with_default_value_to_arguments (discount = 2)
    puts discount
    10 - discount
end
result_passing_arguments = method_with_default_value_to_arguments 1
puts "[method_with_default_value_to_arguments] passing arguments #{result_passing_arguments}"
result_no_passing_arguments = method_with_default_value_to_arguments
puts "[method_with_default_value_to_arguments] passing arguments #{result_no_passing_arguments}"

# Symbols as arguments
# Allows not to remember position of the arguments
def method_with_symbols_as_arguments (first:, second:, third:)
    puts "[method_with_symbols_as_arguments]"
    puts first, second, third
end
method_with_symbols_as_arguments second: 'second', third:'third', first:'first'     # You can send in any order, since the important is the symbol

# Also default value can be indicated
def method_with_symbols_and_default_value_as_arguments (first: 'first', second: 'second', third:)
    puts "[method_with_symbols_and_default_value_as_arguments]"
    puts first, second, third
end
method_with_symbols_and_default_value_as_arguments third:'third'     #
