# to_s
# Method used in the background in the interpolation "#{3}"
a = 3
b = a.to_s      # From Integer --> To String
puts "a whose type is #{a.class}, while 3.to_s is #{b.class}"
c = 3.56
d = c.to_s      # From Float --> To String
puts "c whose type is #{c.class}, while (3.56).to_s is #{d.class}"
n = [1, 2, 3]
o = n.to_s      # From Array --> To String
puts "n whose type is #{n.class}, while [1, 2, 3].to_s is #{d.class}"
p = {a: 1, b:2}
q = p.to_s      # From Hash --> To String
puts "pn whose type is #{p.class}, while {a: 1, b:2}.to_s is #{q.class}"

# to_i
e = "100"
f = e.to_i      # From String --> To Integer
puts "e whose type is #{e.class}, while (100).to_i is #{f.class}"
g = 100.443
h = g.to_i      # From Float --> To Integer
puts "g whose type is #{g.class}, while (100.443).to_i is #{h.class}"

# to_f
j = "100"
k = j.to_f      # From String --> To Float
puts "j whose type is #{j.class}, while 100.to_f is #{k.class}"
l = 100
m = l.to_f      # From Integer --> To Float
puts "l whose type is #{l.class}, while 100.to_f is #{m.class}"

# to_h
r = [[:a, 1], [:b, 2]]
s = r.to_h      # From Sub Arrays --> To Hash -- Not found this conversion with other types --
puts "r whose type is #{r.class}, while [[:a, 1], [:b, 2]].to_h is #{s.class}"

# to_a
t = (1..9)
u = t.to_a      # From Range --> To Array
puts "t whose type is #{t.class}, while (1..9).to_a is #{u.class}"
v = {a: 1, b:2}
w = v.to_a      # From Hash --> To Array
puts "v whose type is #{v.class}, while {a: 1, b:2}.to_a is #{w.class}"