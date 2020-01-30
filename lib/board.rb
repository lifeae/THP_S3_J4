class Board
  def initialize
    system "clear"
	  @valeur = []
  	tab_position = ["A1","A2","A3","B1","B2","B3","C1","C2","C3"] #Tableau de position des cases dans la grille.
		@tab_win = ["a","b","c","d","e","f","g","h","i"] #Tableau de victoire (pour éviter les espaces).

	  i = 0
	  while i < 10 #Initialise le tableau d'espaces.
	    @valeur[i] = " "
	    i = i + 1
	  end

    @tour_de_jeu = 0 #Permet de compter le nombre de tours de jeu.
    while @tour_de_jeu < 9
  	  puts "    1   2   3".red
      puts "  +---+---+---+".yellow
      print "A | ".yellow
      print "#{@valeur[1]}".red
      print " | ".yellow
      print "#{@valeur[2]}".red
      print " | ".yellow
      print "#{@valeur[3]}".red
      puts " | ".yellow
      puts "  +---+---+---+".yellow
      print "B | ".yellow
      print "#{@valeur[4]}".red
      print " | ".yellow
      print "#{@valeur[5]}".red
      print " | ".yellow
      print "#{@valeur[6]}".red
      puts " | ".yellow
      puts "  +---+---+---+".yellow
      print "C | ".yellow
      print "#{@valeur[7]}".red
      print " | ".yellow
      print "#{@valeur[8]}".red
      print " | ".yellow
      print "#{@valeur[9]}".red
      puts " | ".yellow
      puts "  +---+---+---+".yellow

	    puts "Où veux-tu jouer ? (A1,B2,C3..)".yellow
	    print "> ".yellow
	    reponse = gets.chomp # Réponse entrée par le joueur
	    z = 1

	    tab_position.each do |item| # Boucle qui permet de savoir quel joueur joue, où et quel signe mettre.
  	    if reponse != item
		      z = z + 1
  	    else
		      system "clear"
          if @valeur[z] == " "
            if @tour_de_jeu % 2 == 0
              @valeur[z] = "X"
              @tab_win[z] = "X"
            else
              @valeur[z] = "O"
              @tab_win[z] = "O"
            end
            @tour_de_jeu = @tour_de_jeu + 1
          else
              system "clear"
              puts "La place est déjà prise !".red
          end
        end
	    end

    #Systeme de probabilité des victoires
      if @tab_win[1] == @tab_win[2] && @tab_win[3] == @tab_win[1]
        puts "vainqueur : 1 2 3 ".green
        break
      elsif @tab_win[4] == @tab_win[5] && @tab_win[6] == @tab_win[4]
        puts "vainqueur : 4 5 6 ".green
        break
      elsif @tab_win[7] == @tab_win[8] && @tab_win[9] == @tab_win[7]
        puts "vainqueur : 7 8 9 ".green
        break
      elsif @tab_win[1] == @tab_win[4] && @tab_win[7] == @tab_win[1]
        puts "vainqueur : 1 4 7 ".green
        break
      elsif @tab_win[2] == @tab_win[5] && @tab_win[8] == @tab_win[2]
        puts "vainqueur : 2 5 8 ".green
        break
      elsif @tab_win[3] == @tab_win[6] && @tab_win[9] == @tab_win[3]
        puts "vainqueur : 3 6 9 ".green
        break
      elsif @tab_win[1] == @tab_win[5] && @tab_win[9] == @tab_win[1]
        puts "vainqueur : 1 5 9 ".green
        break
      elsif @tab_win[3] == @tab_win[5] && @tab_win[7] == @tab_win[3]
        puts "vainqueur : 3 5 7 ".green
        break
      end
    end

    if @tour_de_jeu == 9
      puts "Egalite".red
    end
  end
end