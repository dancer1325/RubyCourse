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
            puts "[Method] is a false expression"
        end
   else
        puts "Unknown name_of_the_object #{name_of_the_object}"
   end
end

test(*method, :method)