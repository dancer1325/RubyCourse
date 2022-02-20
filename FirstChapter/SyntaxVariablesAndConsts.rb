# Variables are
# 1. Dynamic -- Its value can change --
# 2. Its value can be inferred
# 3. They are pointers to some memory's address

my_variable = "Hello"   # snake_case to  declare variables
puts my_variable

my_variable = 3
puts my_variable


# def allows defining methods
# Understand the variable's scope
def say_hello
    x = "Hello"
    puts x

    say_goodbye
end

def say_goodbye
    x = "Goodbye"
    puts x
end

x = 'Let\'s check variable scope'
puts x

say_hello