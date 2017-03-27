require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock_paper_scissors')

class TestGame < MiniTest::Test

  def setup
    @game = Game.new()
  end

  def test__rock_vs_paper
    assert_equal("Paper wins!", @game.play("rock", "paper"))
  end

  def test__scissors_vs_scissors
    assert_equal("Draw!", @game.play("scissors", "scissors"))
  end

  def test__scissors_vs_rock
    assert_equal("Rock wins!", @game.play("scissors", "rock"))
  end

end