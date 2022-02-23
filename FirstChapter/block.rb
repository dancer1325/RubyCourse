# Define a method, passing a block

# 1. Using yield
def block_test
    puts '[block_test] the method'
    yield if block_given?           # yield returns the control to the part in which the method has been invoked
                                    # block_given Built-in function in the methods to identify if the method invoked received a block
    puts '[block_test] the method again'
end

# Invoke the method, sending a block
#   1.1 do BlockCode end
block_test do
    puts '[block_test_do_blockcode_end] the block'
end
#   1.2 {BlockCode}
block_test {puts '[block_test_{}] the block'}

# 2. Passing the block as argument
def block_test_passing_block(&block)    # $block should be the last method's argument
    puts '[block_test_passing_block] the method'
    block.call if block_given?      # yield returns the control to the part in which the method has been invoked
                                    # block_given Built-in function in the methods to identify if the method invoked received a block
    puts '[block_test_passing_block] the method again'
end

# Invoke the method, sending a block
#   2.1 do BlockCode end
block_test_passing_block do
    puts '[block_test_passing_block_do_blockcode_end] the block'
end
#   2.2 {BlockCode}
block_test_passing_block {puts '[block_test_passing_block_{}] the block'}

# ----------

# Return the execution to the block outside the method, and sending arguments
def block_sending_arguments
    yield(1)
    yield(2)
    yield(3)
end

# Invoke the method, sending a block
# 1 do BlockCode end
block_sending_arguments do |num|
    puts "[block_sending_arguments_do_blockcode_end] whose num is #{num}"
end
# 2 {BlockCode}
# block_sending_arguments { puts " [block_sending_arguments_{}] whose num is  #{|num|} "}       # It doesn't compile
# block_sending_arguments { puts " [block_sending_arguments_{}] whose num is  #{num} "}         # It doesn't compile
# block_sending_arguments { puts " [block_sending_arguments_{}] whose num is "  |num| }         # It doesn't compile
# block_sending_arguments { [block_sending_arguments_{}] whose num is  |num| }                  # It doesn't compile
block_sending_arguments { |num| }


def block_sending_several_arguments
    yield(1, 11, 12)
    yield(2, 22)
    yield(3)
end

block_sending_several_arguments do |num1, num2, num3|
    puts "[block_sending_several_arguments] whose num is #{num1}, #{num2} and #{num3}"
end