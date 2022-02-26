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

class A
  include MyModule          # MyModule's methods can be used in A's instance
  include SecondModule      # Several modules can be included
end

class B
  extend MyModule           # MyModule's methods can be used in B class
end

a_instance = A.new
a_instance.module_method            # module_method MyModule's method that can be used in A's instance
a_instance.second_module_method     # second_module_method Method of the second module

B.module_method             # module_method MyModule's method that can be used in B class

# Además, podemos utilizar los modulos como namespaces:
#
# module GitHub
#   class User
#     # ...
#   end
# end
#
# module Twitter
#   class User
#   end
# end

# ¡GitHub::User y Twitter::User son clases diferentes!