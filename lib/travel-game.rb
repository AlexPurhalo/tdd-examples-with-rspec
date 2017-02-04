class TravelGame
  def steps(*step)
    @steps = *step
  end

  def initialize
    @actual_step = 0
  end

  def actual_step # attr_reader :actual_step
    @actual_step
  end

  def game_result
    steps_sum == 16 ? 'you are win' : "you are still in the game, on #{steps_sum} step"
  end

  private
  def steps_sum
    @steps.each do |step|
      if actual_step == 4
        @actual_step -= 3
      elsif actual_step == 17
        @actual_step -= 6
      else
        @actual_step += step
      end
    end

    actual_step
  end
end

alex_game = TravelGame.new
alex_game.steps(2, 2)
puts alex_game.game_result