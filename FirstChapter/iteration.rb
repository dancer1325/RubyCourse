array = [1, 2, 3, 4]
hash = {a:1 , b:2, c:3, d:4}

# each
# 1. Under arrays
array.each do |element|         # Element - Returned by the array, that in this case is each element of the iteration
    puts element
end
# 2. Under hash
hash.each do |key, value|       # ElementS returned by the hash, that in this case are the key and value
    puts "#{key}, #{value}"
end

# map
# Return a new collection. Original one not modified
# 1.1 do BlockCode end
array_new = array.map do |element|         # Element - Returned by the array, that in this case is each element of the iteration
    element_new = element - 1
    puts "element_new #{element_new}"
#     return element_new          # Not necessary to indicate return, because either methods or blocks, last expression / line --> expression which is returned
    element_new
end
puts "Original collection array #{array}, and the new one #{array_new}"

# 1.1.1 You can map to another object
array_new_mapping_to_other_objects = array.map do |element|
    { element: element}             # Mapping from Array of Integers --> Array of Hash
end
puts "Original collection array #{array}, and the new one #{array_new_mapping_to_other_objects}"

# 1.2 {BlockCode}
array_new_with_block = array.map { |element| element + 1 }
# array_new_with_block = array.map { |element| puts "Original collection array #{array}, and the new one #{array_new}" element + 1 }        # Not possible to add several expressions in 1 line

# TODO: How does it work?
# 2. Under hash
hash.map do |key, value|       # ElementS returned by the hash, that in this case are the key and value
     "#{key}, #{value}"
end

# map!
# Return the original collection, with the modifications indicated in the map
puts "Original collection, previous to apply map! #{array}"
array.map! { |element| element + 1}
puts "Collection after applying map! #{array}"