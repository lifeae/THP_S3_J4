require_relative 'board_case'
require_relative 'board'
require_relative 'show'
require_relative 'player'

class Game
  #TO DO : la classe a plusieurs attr_accessor: le current_player (égal à un objet Player), le status (en cours, nul ou un objet Player s'il gagne), le Board et un array contenant les 2 joueurs.
  attr_accessor :player1, :player2, :my_board, :on_going, :show, :current_player, :arr_play
  def initialize
    #TO DO : créé 2 joueurs, créé un board, met le status à "on going", défini un current_player
    system("clear")
    @my_board = Board.new
    print "Joueur 1 un donner votre nom \n>"
    @player1 = Player.new(gets.chomp, "X")
    print "Joueur 2 un donner votre nom \n>"
    @player2 = Player.new(gets.chomp, "O")
    @arr_play = []
    @arr_play << player1
    @arr_play << player2
    @on_going = true
    @show = Show.new
  end

  # Cette function gere les tour et coordone les autre function
  #TO DO : méthode faisant appelle aux méthodes des autres classes (notamment à l'instance de Board). Elle affiche le plateau, demande au joueur ce qu'il joue, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie.

  def turn
    @arr_play.each do |play|
      system("clear")
      @show.show_board(self.my_board)
      @my_board.play_turn(play)
    end
    @on_going =  @my_board.victory?[0]
  end

  # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
  # Cette fonction permet de demarer une nouvelle partie sans perdre les joueur
  def new_round
    system("clear")
    print "Souhaiter vous jouer une autre partie ?\nEntrer oui ou non \n>"
    choice = gets.chomp
    if choice == "oui"
      @my_board = nil
      @my_board = Board.new
      @on_going = true
    elsif choice == "non"
       exit
    else
       self.new_round
    end
  end

  # Cette function affiche les message de fin et de match nul
  # TO DO : permet l'affichage de fin de partie quand un vainqueur est détecté ou si il y a match nul
  def game_end
    system("clear")
    victor = @my_board.victory?[1]
    if victor == "X"
      puts "Felicitation #{player1.name} a gagner !"
    elsif victor == "O"
      puts "Felicitation #{player2.name} a gagner !"
    else
      puts "Match nul"
    end
    puts "Appuyer sur " + "ENTRER".colorize(:red) + " pour continuer"
    gets.chomp
  end
end
