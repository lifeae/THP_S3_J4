require 'pry'

class BoardCase
  #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
  attr_accessor :index, :status
  def initialize(i)
    #TO DO : doit régler sa valeur, ainsi que son numéro de case

    @index = i
    @status = " "
  end
end
