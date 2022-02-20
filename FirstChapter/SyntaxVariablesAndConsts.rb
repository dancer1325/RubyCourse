# Variables are
# 1. Dynamic -- Its value can change --
# 2. Its value can be inferred
# 3. They are pointers to some memory's address

my_variable = "Hello"   # snake_case to  declare variables
puts my_variable

my_variable = 3
puts my_variable


# def allows defining methods
# Variable's scope is local
def say_hello
    x = "Hello"   # x points to different memory address because it's in another scope
    puts x

    say_goodbye
end

def say_goodbye
    x = "Goodbye"  # x points to different memory address because it's in another scope
    puts x
end

x = 'Let\'s check variable scope'   # x points to different memory address because it's in another scope
puts x

say_hello

# Since it's local scope
# If you define a variable outside, and we try to use in a local scope --> We get an error

y = "Hello"
def foo
    puts y
end
foo