
class Person
    def initialize(name, surname)           # Class's constructor
        @name = name                        # Way to specify the class's attribute to the variable
        @surname                            # Necessary to associate attribute with the variable
    end
    def full_name                           # Another class's method
        "#{@name} #{@surname}"              # Attributes are accessible via @
    end
    def name                                # Getter method
        @name
    end
    def surname                             # Getter method
        @surname
    end
end

person = Person.new('Alfredo', 'Toledano')
puts "person.full_name #{person.full_name}"
puts "person.name #{person.name}"
puts "person.surname #{person.surname}"