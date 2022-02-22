# Arrays

# Ways to initialize an array
puts "Array.new #{Array.new}"
puts "Array.new(3) #{Array.new(3)}"
puts "Array.new(3, 'hey!') #{Array.new(3, 'hey!')}"
puts "[]) #{[]}"
puts "[1, 'hello']) #{[1, 'hello']}"

# Adding elements to the array
a = []
a[0] = ('Alfredo')
puts "a #{a}"
a[1] = 'Alfredo'     # Without adding ()
puts "a #{a}"
a.[]=(5, 'Alfredo')  # All in Ruby are objects. It adds to the position 5, the value 'Alfredo', and all this code must appear together without space in '='
puts "a #{a}"
a.push(6)           # Add a new element at the end of the array
puts "a #{a}"
a.unshift(10)       # Add a new element at the beginning of the array
puts "a #{a}"
a << 20             # Add a new element at the end of the array
puts "a #{a}"
a.concat([4, 'David', 5])    # Concat adding another array at the end, returning the same array but modified
puts "a #{a}"

# Getting elements from the array
puts "a[1] #{a[1]}"
puts "a.[](1) #{a.[](1)}"  # All in Rube are objects

# If we add an element to the array, without indicating the previous ones --> It will be filled in with nil
a[9] = 'Car'
puts "a #{a}"

# Remove elements from the array
a.pop           # Remove the last element of the array, and it returns that element
puts "a #{a}"
a.shift         # Remove the first element of the array, and it returns that element
puts "a #{a}"

# Generate new arrays based on others
b = a.+([1])        # Generate new array
puts "a #{a}"
puts "b #{b}"
c = a.+([4,3])      # Generate new array. Similar to the previous one's but managing as objects
puts "a #{a}"
puts "c #{c}"
e = [1, 2, [3, 4, [5], [6, [7, 8]]]]    # Sub arrays
f = e.flatten                           # flatten returns a new array, flatten all the sub arrays, but the original array doesn't change
puts "e.flatten #{f} , while the original one e #{e}"
g = f.reverse                                       # Reverse the entries of the array, without modifying the original one
puts "f.reverse #{g}, but the original one #{f}"
h = ['ab', 'ba', 'a', 'aaa']            # sort just work if the array' s entries are to the same type
j = h.sort
puts "h #{h} and sorting h.short #{j}"
h = [2, 1, 23, 4, 5, 3]                 # sort just work if the array' s entries are to the same type
j = h.sort
puts "h #{h} and sorting h.short #{j}"
h = ['ab',2, 'ba', 4]
# j = h.sort                            # It's going to throw an error because the entries are from different type
a = [1,1,1,2,3]
b = a.uniq                              # Remove all the duplicated elements of the array, returning a new array, but without modifying the original one
puts "a #{a}, while b #{b}"
b = a.dup                               # Duplicate, creating a new array
puts "a #{a} with object_id #{a.object_id} while a.dup #{b} with object_id #{b.object_id}"

# Replace arrays
d = a
puts "a.object_id #{a.object_id} d.object_id #{d.object_id}"
puts "a #{a} d #{d}"

a.replace(['Alfredo'])                                          # Replace, modifying the existing array
puts "a.object_id #{a.object_id} d.object_id #{d.object_id}"
puts "a #{a} d #{d}"

puts "e.flatten! #{e.flatten!}"                                 # Replace, modifying the existing array, flatten all the sub arrays

# Generate another type of object
b = ['ab', 'ba', 'a', 'aaa']
c = b.join                                              # Generate a string, joining all the elements of the array
d = b.join('-')                                         # Generate a string, joining all the elements of the array, but splitting with the separator
d = b.join("-")                                         # It's valid with double
puts "b #{b} while b.join #{c} while b.join(\"-\") #{d}"

# Query methods
a = [1, 2, 3, 4, 5, 6]
puts "a.size #{a.size}"                                         # Array's length
puts "a.empty? #{a.empty?}"                                     # Check if the array is empty
puts "a.include? 1 #{a.include? 1}, also possible removing the tailing whitespace a.include?1 #{a.include?1}"       # Check if the array contains an element
#puts "a.include ?1 #{a.include ?1}                             # It throws an error because ? must be close to include
puts "a.count #{a.count}, while a.count(1) #{a.count(1)}"       # Count the number of elements. In case that you specify an argument
puts "a.first #{a.first}, while a.first(3) #{a.first(3)}"       # Get the first element by default. If you specify a list --> List of elements
puts "a.last #{a.last}"                                         # Get the last element

# Hash

# Ways to initialize a hash
a = Hash.new('default_value')               # Value which will be returned in case you ask by a key which doesn't exist
puts "a #{a}"
a = {}                                      # Empty array
puts "a #{a}"
a = {a: 1, b:2}                             # Initialize with several entries. Keys and values are separated simply by whitespaces.
#a = {:a 1, :b2}                            # Symbols here are indicated with ":" after to the own name. If not it's thrown an error
puts "a #{a}"
a = {'Smith' => 'John', 'Jones' => 'Jane'}  # With arrows directly
puts "a #{a}"

# Adding elements to the hash
a.[]=(2, 'Alfredo')                     # Add an element to the hash. Necessary to remove all whitespaces
puts "a.[]=(2, 'Alfredo') #{a}"
a.[]=('a', 2)                           # Keys and values of the hash can be of different types
puts "a #{a}"
a[:b] = 5                               # Add an element without being an object
puts "a #{a}"
puts "a[4] #{a[4]}"                     # If you try to find an entry by a key which doesn't exist --> nil is got
a = {'Smith' => 'John', 'Jones' => 'Jane'}
b = {'Smith' => 'Jim'}
c = a.merge! b
puts "a.merge! b #{c}, but it has modified a #{a}"    # Modify the original hash. In this specific example, an element has been modified because the key matched
d = {'Perez' => 'Jose'}
e = a.merge!d
puts "a.merge! d #{e}, but it has modified a #{a}"    # Modify the original hash. In this specific example, an element has been replaced

# Get elements of the hash
puts "a[:hello] #{a[:hello]}"           # Retrieve a value based on the key. If they key doesn't exist --> Default value is returned
puts "a[2] #{a[2]}"                     # Retrieve a value based on the key which exists
puts "a.[](2) #{a.[](2)}}"              # Retrieve a value based on the key as method

# Generate a new hash based on others
a = {'Smith' => 'John', 'Jones' => 'Jane'}
b = {'Smith' => 'Jim'}
c = a.merge b                                           # Return a new hash, without modifying the previous one
puts "a.merge b #{c}, but it hasn't modified a #{a}"
a = {a: 1, b: 3, c: 4, d: 1, e:1}
b = a.invert                                            # Return a new hash, removing the duplicated new keys without modifying the original one
puts "a.invert #{b}, while the original one a #{a}"

# Query methods
a.has_key? :a                                           # Check if there is a key into that hash
a.has_key?(:a)                                          # Also you can wrap them with ()
a.empty?                                                # Check if the hash is empty
a.size                                                  # Get the number of key/values
a.keys                                                  # Get all the hash's keys
a.values                                                # Get all the hash's values