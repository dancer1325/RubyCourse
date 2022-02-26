module MyModule             # Define a module
  def module_method         # Module's method
    puts 'module_method'
  end
end

module SecondModule                 # Define a module
  def second_module_method          # Module's method
    puts 'second_module_method'
  end
end

module ThirdModule                  # Define a module
  def third_module_method           # Module's method
    puts 'third_module_method'
  end
end

class A
  include MyModule          # MyModule's methods can be used in A's instance
  include SecondModule      # Several modules can be included
  extend ThirdModule        # Possible to include and exclude methods at the same time
end

class B
  extend MyModule           # MyModule's methods can be used in B class
  extend SecondModule       # Several modules can be extended
end

a_instance = A.new
a_instance.module_method            # module_method MyModule's method that can be used in A's instance
a_instance.second_module_method     # second_module_method Method of the second module
A.third_module_method               # extended --> Possible to access via class

B.module_method             # module_method MyModule's method that can be used in B class

# Classes are unique by namespace / module
module GitHub
  class User
    GITHUB_USER_CONSTANT = "GITHUB_USER_CONSTANT"
  end
end

module Twitter
  class User                # Same name of the class, but it's different, because it's defined in another namespace / module
    TWITTER_USER_CONSTANT = "TWITTER_USER_CONSTANT"
  end
end

puts "GitHub::User::GITHUB_USER_CONSTANT"       # NameOfTheModule::NameOfTheClass to get access to the class
puts "Twitter::User::TWITTER_USER_CONSTANT"


#-------------------------------------------------------

class Animal
end

class Fish < Animal
    include SwimSkill
end

class Monkey < Animal
    include WalkSkill
end

module SwimSkill
    def swim
        puts "I can swim"
    end
end

module WalkSkill
    def walk
        puts "I can walk"
    end
end