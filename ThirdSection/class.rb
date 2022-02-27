class Animal
    # initialize method not necessary to create to be able afterwards to instantiate a class's object

    def breathe
        puts "All animals need to breathe"
    end
    def animal_group(group)
        puts "Animal belongs to #{group}"
    end
    def main_goal
        puts "Main goal of the animals are: 1. Be born, 2. Grow, 3. Reproduce, 4. Die"
    end
end
class Person < Animal                       # Hierarchy, extending from Animal
    PEOPLE = "PEOPLE"                       # Class's constant
    @@count = 0                             # Class variable. Visible from all class's instances
    def initialize(name, surname, age, gender, mood, status)  # Class's constructor
        @name = name                        # Way to specify the class's attribute to the variable
        @surname                            # Necessary to associate attribute with the variable
        @age = age
        @gender = gender
        @mood = mood
        @status = status
        @@count += 1
    end
    def full_name_and_mood                           # Another class's method
        "#{@name} #{@surname} with mood #{@mood}"              # Attributes are accessible via @
    end
    def name                                # Getter method
        @name
    end
    def name_setter(new_name)               # Common setter method
        @name = new_name
    end
    def surname                             # Getter method
        @surname
    end
    def surname=(new_surname)               # Different setter method style
        @surname = new_surname
    end
    attr_accessor :age, :status             # Create "age", "status" getter methods and "age=()", "status=()" setter methods. Several can be created at the same time
    attr_reader :gender                     # Create "gender" getter method
    attr_writer :mood                       # Create "mood=()" setter method

    def walk                                # By default all methods are public
        puts "I can walk!"
    end

    def is_married
        is_married = "Single" == self.status    # self. Points to the context, so in this case it's the instance of the class
        puts "My status is #{@status}"
        is_married
    end

    def breathe                             # Overriding the parent's method
        super                               # It would invoke to the parent's breathe method
        puts "All person breathe by the nose"
    end

    def animal_group(group)            # Overriding the parent's method
        puts "Checking the animal_group for the people"
        super(group)                   # It would invoke to the parent's animal_group method, passing the argument
    end

    def self.class_method               # Class method. Not executed under an class's instance
        puts "Class method"
    end

    def self.class_method_about_class_variable
        puts "Number of persons created is #{@@count}"
    end

    private                                 # All block of code which appears below and into the class, is private. Only available inside the class

    def display_name_age
        puts "My name is #{@name}, and I am #{@age} years old"
    end

    def display_name_mood
        puts "My name is #{@name}, and I feel #{@mood}"
    end

    protected                               # All block of code which appears below and into the class, is protected. Only available inside the class and children one's

    def is_minor
        is_minor = @age >= 18
        puts "I am #{@age} years old, so #{is_minor} minor"
        is_minor
    end
end
class Worker < Person                       # Another nested hierarchy
    def initialize(name, surname, age, gender, mood, status, job)
        super(name, surname, age, gender, mood, status)     # Invoke parent's initialize, passing all those arguments
        @job = job
    end
    attr_reader :job                     # Create "job" getter method
end

# person = Person.new('Alfredo', 'Toledano')  # If we don't pass the right number of arguments, since all are mandatory --> It will throw an error
person = Person.new('Alfredo', 'Toledano', 29, "Male", "Happy", "Single")
puts "person.full_name_and_mood #{person.full_name_and_mood}" # Surname doesn't appear

puts "person.name #{person.name}"           # Invoke getter method
puts "person.surname #{person.surname}"     # Invoke getter method. Empty because the constructor created doesn't assign passed variable to the attribute
puts "person.age #{person.age}"             # Invoke getter method created automatically
puts "person.status #{person.status}"       # Invoke getter method created automatically
puts "person.gender #{person.gender}"       # Invoke getter method created automatically
#puts "person.mood #{person.mood}"           # It throws an error because attr_writer just creates setter method

person.name_setter('Perico')                # Common setter method
puts "person.name #{person.name}"
person.surname = 'DeLosPalotes'             # Different setter method
puts "person.surname #{person.surname}"
person.age = 30                             # Setter method created automatically by attr_accessor
puts "person.age #{person.age}"             # Getter method created automatically by attr_accessor
person.status = "Married"                   # Setter method created automatically by attr_accessor
puts "person.status #{person.status}"       # Getter method created automatically by attr_accessor
#person.gender = "Unknown"                   # It throws an error because attr_reader just creates getter method
puts "person.gender #{person.gender}"       # Getter method created automatically by attr_reader
person.mood = "Passionated"                 # Setter method created automatically by attr_writer
puts "person.full_name_and_mood #{person.full_name_and_mood}"   # Check the value of mood because it hasn't got a specific getter method

person.walk                                 # Public method --> Accessible outside the class
#person.display_name_age                     # Private method --> Not accessible outside the class. It will throw an error
#person.is_minor                             # Protected method --> Not accessible outside the class. It will throw an error
person.breathe                              # Get the result of the override method, not of the parent one
person.main_goal                            # Inherited method from the parent
person.animal_group("vertebrate")           # Inherited method from the parent, but furthermore, we are passing the parents method's argument

#person.class_method                         # It throws an error, because it's trying to invoke a class method on class's instance
Person.class_method                         # Class method
Person.class_method_about_class_variable    # Class method. Returns class variable

animal = Animal.new                         # Possible to instantiate a class's object without defining 'initialize' method
animal.breathe
animal.animal_group("not specified")
animal.main_goal

worker = Worker.new('Alfredo', 'Toledano', 29, "Male", "Happy", "Single", "IT Consultant")
puts "worker.full_name_and_mood #{worker.full_name_and_mood}"   # Inherited method from the parent
puts "worker.job #{worker.job}"

CONSTANT = "CONSTANT"                       # Global constant
puts "Global constant #{CONSTANT}"
puts "Person.PEOPLE #{Person::PEOPLE}"      # Class's constant. Required "::" to get access to its value