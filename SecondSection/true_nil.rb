# All expressions return true, except to
# 1) False expressions
# 2) nil

def method
end

def test(*cases, name_of_the_object)
   case name_of_the_object
   when :method
        if cases
            puts "[Method] is a truth expression"
        else
            puts "[Method] is a false expression"           # Dead code. Method always return true expression
        end
   when :string
        if cases
            puts "[String] is a truth expression"
        else
            puts "[String] is a false expression"           # Dead code. String always return true expression
        end
   when :numeric
        if cases
            puts "[Numeric] is a truth expression"
        else
            puts "[Numeric] is a false expression"          # Dead code. Numeric always return true expression
        end
   when :array
        if cases
            puts "[Array] is a truth expression"
        else
            puts "[Array] is a false expression"            # Dead code. Arrays always return true expression
        end
   when :hash
        if cases
            puts "[Hash] is a truth expression"
        else
            puts "[Hash] is a false expression"             # Dead code. Hash always return true expression
        end
   when :boolean
        if cases
            puts "#{cases} is a truth expression"
        else
            puts "#{cases} is a false expression"
        end
   when :nil
        if cases
            puts "[nil]  is a truth expression"             # Dead code. Hash always return true expression
        else
            puts "[nil] is a false expression"
        end
   else
        puts "Unknown name_of_the_object #{name_of_the_object}"
   end
end

# For Method
test(*method, :method)      # TODO: Check that we are sending really a method
# For String
test("string", :string)
# For Numeric
test(1, :numeric)
# For Array
test([1,2,3, "string"], :array)
# For Hash
test({ 1 => "One", 2 => "Two"}, :hash)
# For Booleans
test(true, :boolean)
test(false, :boolean)       # One of the 2 exceptions of false expressions TODO: Check why is it returning as true expression
# For nil
test(nil, :nil)             # One of the 2 exceptions of false expressions TODO: Check why is it returning as true expression

# nil
nil_to_s = nil.to_s
puts "nil_to_s #{nil_to_s}"

nil_to_i = nil.to_i
puts "nil_to_i #{nil_to_i}"

nil_to_object_id = nil.object_id
puts "nil_to_object_id #{nil_to_object_id}"

#.nil?
hash = {a: 1}
puts "hash[:b].nil? #{hash[:b].nil?} where hash #{hash}"