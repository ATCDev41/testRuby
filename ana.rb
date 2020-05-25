# Trouvé les annagrammes de l'argument dans la liste du second arguments


word = ARGV[0]
dictionary = ARGV[1]

liste = []
position = 0
File.foreach(dictionary) do |line|
    liste[position] = line.chomp
    position += 1
end

word = word.split("").sort.join("")


i = 0
while (i < liste.count - 1)
    if (liste[i].split("").sort.join("") == word)
         puts liste[i]
    end
    i += 1
end

