taille = ARGV[0].to_i
i = 1
    
puts " Bienvenue dans le jeu de l'escalier" 
puts " Vous avez séléctionner #{taille} étages ! "

   

    while i <= taille
        print " " * (taille - i)
        print "#" * i
        print "\n"
        i+=1
    end



