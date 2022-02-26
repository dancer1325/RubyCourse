module OpenWebinars     # Same module can be used in different files
#     class dice
    class Dice
        attr_accessor :sides
        def initialize(sides)
            if !sides.is_a?(Numeric) || sides < 1              # is_a? Method to check if it's the same class
                raise ArgumentError, "Wrong number of sides"   # Throw an error in case that we pass wrong number to create dice's instance
            end
            @sides = sides
        end
        def roll
            random_generated = rand(1..sides)
            puts "random_generated #{random_generated}"
            random_generated
        end
    end
end

dice_one = OpenWebinars::Dice.new(9)
puts "dice_one's sides #{dice_one.sides}"
dice_one.roll

# Generate random numbers
rand(10)                        # rand(Number)  It generates a random number between [0, Number]. And it's not always the same
rand(10)
rand(10)
rand(2..10)                     # rand(LowestPossibleNumber .. HighestPossibleNumber) --> Possible numbers are [LowestPossibleNumber, HighestPossibleNumber]
rand(2..10)
rand(2...10)                    # rand(LowestPossibleNumber ... HighestPossibleNumber) --> Possible numbers are [LowestPossibleNumber, HighestPossibleNumber - 1]
rand(2...10)

