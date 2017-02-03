class BowlingGame

  # pins method - counts the score
  def pins(rolls) # takes the array with numbers as parameter
    @score = 0 # instance takes zero (0) as default value

    rolls.each do |roll| # iterates through rolls array
      @score = @score + roll # every time adds number from rolls array summing up the score
    end
  end

  # score method - simply returns the value passed to instance variable
  def score
    @score # returns the score
  end
end


game = BowlingGame.new
game.pins([2, 5]) # takes array with numbers as argument
puts game.score
