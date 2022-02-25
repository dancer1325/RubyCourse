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
    str.split(' ').length
    str.split(' ').count                        # Similar functionality
end

def sum(*nums)
    # 1) Using sum
    nums.sum
    puts "nums.sum #{nums.sum}"
    # 2) Manually coded
    result = 0
    nums.each { |num| result += num}
    puts "result manually coded #{result}"
    result
end

def mean_of_integers(*nums)                     # This method just works for integer arguments
    mean_result_of_integers = sum(*nums) / nums.length                    # * Used to invoke to the other method, but for using the array just simply the object itself
    puts "mean_result_of_integers #{mean_result_of_integers}"
    mean_result_of_integers
end

def hot_or_cold(num_to_guess)
end

def find_even(*nums)
    nums.select { |element| element.even? }
end


def test(cases)
    puts cases.all? ? 'Perfect' : 'Error :S'        #all? Run through the loop, to check if each item returns true
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
    test [max(3, 4, 2, 1) == 4, max(100, -5, 3, 75) == 100]                 # Array of arguments sent
when :longest_string
    test [longest_string('aaaaaaaa', 'aaa') == 'aaaaaaaa']                  # Array of arguments sent
when :word_count
    test [word_count('Word count program') == 3, word_count('Word') == 1]   # Array of arguments sent
when :sum
    test [sum(1,0,1,1) == 3, sum(2,9,4,1) == 16]   # Array of arguments sent
when :mean_of_integers
    test [mean_of_integers(1,1,1,1) == 1, mean_of_integers(2,9,4,1) == 4]   # Array of arguments sent
when :find_even
    test [find_even(1,1,1,1) ==nil, find_even(2,9,4,1) == [2, 4]]   # Array of arguments sent

end