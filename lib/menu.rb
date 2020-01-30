class Menu #graphique et boucle pour recommencer une nouvelle partie
  
  def welcome
    system "clear"
    puts "+----------+----------+----------+".yellow
    puts "|                                |".yellow
    puts "|  BIENVENUE AU JEU DU MORPION   |".yellow
    puts "|                                |".yellow
    puts "+----------+----------+----------+".yellow
  end

  def main_menu
    puts "Que souhaitez-vous faire ?".yellow
    puts "1- Lancer une nouvelle partie.".yellow
    puts "2- Quitter le programme.".yellow
    print "> ".yellow
    choice = gets.chomp.to_i
    system "clear"
    case choice
    when 1
      puts
      return 1
    when 2
      puts
      puts "Vous avez choisi de quitter le programme.".yellow
      puts "Nous vous souhaitons une bonne journée !".yellow
      exit
    else
      system "clear"
      puts "Choix inconnu, veuillez saisir une des options proposées ci-dessous.".yellow
      puts
      main_menu
    end
  end

  def players_names
    puts "Vous avez choisi de lancer une nouvelle partie.".yellow
    puts "C'est parti !".yellow
    puts
    puts "Veuillez entrer le nom du joueur 1 :".yellow # Demande le nom du premier joueur
    print "> ".yellow
    name1 = gets.chomp
    puts "Veuillez entrer le nom du joueur 2 :".yellow	# Demande le nom du deuxième joueur
    print "> ".yellow
    name2 = gets.chomp
    player1 = Player.new(name1)
    player2 = Player.new(name2)
    puts "Que la partie commence !".yellow
    puts "Touchez une touche pour continuer".yellow
    gets.chomp
  end
end  