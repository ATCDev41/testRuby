c1 = ARGV[0]
c2 = ARGV[1]


tab = []
position = 0

File.foreach(c1) do |line|
    tab[position] = line.chomp.split('').map(&:to_i)
    position += 1
end

data2 = []
position = 0
File.foreach(c2) do |line|
    data2[position] = line.chomp.split('').map(&:to_i)
    position += 1
end

line = 0
line2 = 0
    
puts data2[line].count #6 sur la ligne
puts data2.count # sur 5 colomnes
puts tab.count #3
puts tab[line2].count #3


