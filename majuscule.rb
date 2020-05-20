word = ARGV[0]
result = ''
i = 0

puts "Bienvenue dans l'outils qui met en mAjUsCuLe vos mots !"

while i < word.length
    if i%2 == 0
        result = result + word[i].downcase
    else
        result = result + word[i].upcase
    end 
    i+=1
end


  
puts result