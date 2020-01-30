# frozen_string_literal: true

# Rubocop dont shoot
class Player
  #TO DO : la classe a 2 attr_reader, son nom et sa valeur (X ou O).

  attr_reader :name, :value
  def initialize(nom, val)
    #TO DO : doit régler son nom et sa valeur
    @name = nom
    @value = val
  end
end
