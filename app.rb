require 'bundler'
Bundler.require

require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/menu'

def perform
  choice = 1
  welcome = Menu.new.welcome
  menu = Menu.new.main_menu
  while choice == 1 # Boucle pour recommencer une partie
    players_names = Menu.new.players_names
    board = Board.new
    choice = Menu.new.main_menu
  end
end

perform