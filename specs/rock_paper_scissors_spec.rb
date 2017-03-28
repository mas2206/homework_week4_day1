require('minitest/autorun')
require('minitest/rg')
require_relative('../models/rock_paper_scissors')

class TestGame < MiniTest::Test

  def test__rock_vs_paper
    @game = Game.new("rock", "paper")
    assert_equal("Paper wins!", @game.play())
  end

  def test__scissors_vs_scissors
    @game = Game.new("scissors", "scissors")
    assert_equal("Draw!", @game.play())
  end

  def test__scissors_vs_rock
    @game = Game.new("scissors", "rock")
    assert_equal("Rock wins!", @game.play())
  end

end