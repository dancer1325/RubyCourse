# to_s
# Method used in the background in the interpolation "#{3}"
a = 3
b = a.to_s      # From Integer --> To String
puts "a whose type is #{a.class}, while 3.to_s is #{b.class}"
c = 3.56
d = c.to_s      # From Float --> To String
puts "c whose type is #{c.class}, while (3.56).to_s is #{d.class}"

# to_i
e = "100"
f = e.to_i      # From String --> To Integer
puts "e whose type is #{e.class}, while e.to_i is #{f.class}"
g = 100.443
h = g.to_i      # From Float --> To Integer
puts "g whose type is #{g.class}, while g.to_i is #{h.class}"

# to_f
j = "100"
k = j.to_f      # From String --> To Float
puts "j whose type is #{j.class}, while j.to_f is #{k.class}"
l = 100
m = l.to_f      # From Integer --> To Float
puts "l whose type is #{l.class}, while l.to_f is #{m.class}"