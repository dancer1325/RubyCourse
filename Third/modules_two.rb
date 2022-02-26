module OpenWebinars
    class Person
        attr_accessor :name, :surname, :age
        def initialize(name, surname, age)      # Class's constructor
            @name = name                        # Way to specify the class's attribute to the variable
            @surname = surname
            @age = age
        end

        def full_name
            full_name = "#{@name} #{@surname}"
            full_name_two = "#{name} #{surname}"      # Another way to access to the variables
            "Full name with @ #{full_name} and without @ #{full_name_two}"
            full_name
        end

        def first_letters
            first_letters = "#{name[0]} #{surname[0]}"
#             first_letters_two = "#{name.first} #{surname.first}"    # first TODO: Check in which version or if it exists really
            "First letters manually #{first_letters}"
            first_letters
        end
    end
end

person = OpenWebinars::Person.new('Alfredo', 'Toledano', 29)
