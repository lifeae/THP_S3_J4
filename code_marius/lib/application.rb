require_relative 'game'

class Application
  # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
  def perform

    current_game = Game.new
    i = 1

    while true do
      puts "Partie numero #{i}"
      while current_game.on_going == true
        current_game.turn
      end
      i += 1
      current_game.game_end
      current_game.new_round
    end
  end
end