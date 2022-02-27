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

# Several arguments can be returned to the block
def block_sending_several_arguments
    yield(1, 11, 12)
    yield(2, 22)                # Not problem if you send just return 2 values here
    yield(3)                    # Not problem if you send just return 1 value here
end

block_sending_several_arguments do |num1, num2, num3|
    puts "[block_sending_several_arguments] whose num is #{num1}, #{num2} and #{num3}"
end


# Procs
# Ruby's data type, which contain blocks

# Ways to initialize a Proc
proc_1 = Proc.new { puts '[proc_1] ' }
proc_1.call                             # Invoke the proc === Invoke a block
proc_2 = proc { puts '[proc_2] ' }
proc_2.call                             # Invoke the proc === Invoke a block

# Lambda
# Ruby's data type, which contain blocks

# Ways to initialize a Lambda
lambda_1 = lambda { puts '[lambda_1] '}
lambda_1.call                           # Invoke the lambda === Invoke a block
lambda_2 = -> { puts '[lambda_2] '}
lambda_2.call                           # Invoke the lambda === Invoke a block
