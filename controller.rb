require 'sinatra'
require 'sinatra/contrib/all' if development?
require_relative( './models/game.rb' )
also_reload( './models/*' )

get "/rps/:guess1/:guess2" do
  # guess1 = params["guess1"]
  # guess2 = params["guess2"]
  # if guess1 == guess2
  #   return "Tie!"
  # elsif guess1 == "rock"
  #   if guess2 == "paper"
  #     return "Player 2 wins with paper!"
  #   elsif guess2 == "scissors"
  #     return "Player 1 wins with rock!"
  #   end
  # elsif guess1 == "paper"
  #   if guess2 == "scissors"
  #     return "Player 2 wins with scissors!"
  #   elsif guess2 == "rock"
  #     return "Player 1 wins with paper!"
  #   end
  # elsif guess1 == "scissors"
  #   if guess2 == "rock"
  #     return "Player 2 wins with rock!"
  #   elsif guess2 == "paper"
  #     return "Player 1 wins with Scissors!"
  #   end
  # end
  game = Game.new(params["guess1"], params["guess2"])
  @applied_logic = game.logic()
  erb(:result)
end

get "/" do
  erb(:home)
end
