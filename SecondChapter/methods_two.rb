# Define some methods and to create like a dummy test method
def max(*nums)                                  # If several arguments are passed, with * --> Convert to array
    # 1) Built-in functions
    result_with_max = nums.max                                    # max Array's method to return the highest element of the array, valid for numeric objects
    puts "result_with_max #{result_with_max}"
    # 2) Manually coding
    result_manually = nums.first
    nums.each do |element|
        result_manually = element if element > result_manually
    end
    puts "result_manually #{result_manually}"
    result_manually                             # Not necessary to indicate return
end

def longest_string(*strs)                       # If several arguments are passed, with * --> Convert to array
    # 1) Built-in functions
    result_with_max = strs.max                                    # max Array's method to return the highest element of the array, valid for strings
    puts "result_with_max #{result_with_max}"
    # 2) Manually coding
    result_manually = strs.first
    strs.each do |element|
        result_manually = element if element > result_manually
    end
    puts "result_manually #{result_manually}"
    result_manually                             # Not necessary to indicate return
end
def word_count(str)
end
def sum(*nums)
end
def mean(*nums)
end
def hot_or_cold(num_to_guess)
end
def find_even(*nums)
end


def test(cases)
    puts cases.all? ? 'Perfect' : 'Error :S'        #all? Run through the loop, to check if all return true
end

exercise = ARGV.first.to_sym                        # Pick the first argument sent in the execution of the file
# ARGV  Array which stores the arguments passed to the script
# first Array's method to return the first element of the array
# to_sym Return the symbol corresponding to an object
# ruby NameOfTheClass.rb NameOfTheMethodToExecute
# Example: ruby methods.rb max

puts "Welcome to #{exercise}! Let's test it:"

case exercise
when :max
    test [max(3, 4, 2, 1) == 4, max(100, -5, 3, 75) == 100]
when :longest_string
    test [longest_string('aaaaaaaa', 'aaa') == 'aaaaaaaa']
end