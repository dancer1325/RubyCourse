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
a.[2] = ('Alfredo')  # All in Ruby are objects
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
e = [1, 2, [3, 4, [5], [6, [7, 8]]]    # Sub arrays
f = e.flatten                          # flatten returns a new array, flatten all the sub arrays, but the original array doesn't change
puts "e.flatten #{f} , while the original one e #{e}"

# Replace arrays
d = a
puts "a.object_id #{a.object_id} d.object_id #{d.object_id}"
puts "a #{a} d #{d}"

a.replace(['Alfredo'])                                          # Replace, modifying the existing array
puts "a.object_id #{a.object_id} d.object_id #{d.object_id}"
puts "a #{a} d #{d}"