class Game

  def initialize(option1, option2)
    @option1 = option1
    @option2 = option2
  end

  def play()
    if @option1 == @option2
      return "Draw!"
    elsif @option1 == "rock" && @option2 == "paper"
      return "Paper wins!"
    elsif @option1 == "paper" && @option2 == "rock"
      return "Paper wins!"
    elsif @option1 == "rock" && @option2 == "scissors"
      return "Rock wins!"
    elsif @option1 == "scissors" && @option2 == "rock"
      return "Rock wins!"
    elsif @option1 == "paper" && @option2 == "scissors"
      return "Scissors wins!"
    elsif @option1 == "scissors" && @option2 == "paper"
      return "Scissors wins!"
    else
      return "You can only play 'rock', 'paper' or 'scissors'!"
    end
  end

end