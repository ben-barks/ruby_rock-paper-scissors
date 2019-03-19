class Game

  def initialize(guess1, guess2)
    @guess1 = guess1
    @guess2 = guess2
  end

  def logic
    # guess1 = params["guess1"]
    # guess2 = params["guess2"]
    if @guess1 == @guess2
      return "Tie!"
    elsif @guess1 == "rock"
      if @guess2 == "paper"
        return "Player 2 wins with paper!"
      elsif @guess2 == "scissors"
        return "Player 1 wins with rock!"
      end
    elsif @guess1 == "paper"
      if @guess2 == "scissors"
        return "Player 2 wins with scissors!"
      elsif @guess2 == "rock"
        return "Player 1 wins with paper!"
      end
    elsif @guess1 == "scissors"
      if @guess2 == "rock"
        return "Player 2 wins with rock!"
      elsif @guess2 == "paper"
        return "Player 1 wins with Scissors!"
      end
    end
  end
end
