class TravelGame
  def steps(*step); @steps = *step; end

  def game_result
    steps_sum
    # steps_sum == 16 ? 'you are win' : "you are still in the game, on #{steps_sum} step"
  end

  private
  def steps_sum
    actual_step = 0

    @steps.each do |step|
      actual_step += step

      if two_steps_back?(step)
        actual_step = actual_step - 2
      end
    end

    actual_step
  end

  def two_steps_back?(step_num)
    step_num === 9 || step_num == 16
  end
end

# game_1 = TravelGame.new
# game_1.steps(2, 2) # count: 4, exp. step: 1
# puts game_1.game_result

game_2 = TravelGame.new
game_2.steps(9) # step_num: 9, step_num_result: 7
puts game_2.game_result

game_3 = TravelGame.new
game_3.steps(9, 9)
puts game_3.game_result
