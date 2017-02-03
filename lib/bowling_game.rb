class BowlingGame
  # sets instance variable with current frame by default to zero
  def initialize
    @fir_val_in_frame = 0
  end

  # fir_val_in_frame method - returns the value of @fir_val_in_frame instance
  def fir_val_in_frame
    @fir_val_in_frame
  end

  # pins method - counts the score
  def pins(rolls) # takes the array with numbers as parameter
    @rolls = rolls
  end

  # score method - simply returns the value passed to instance variable
  def score
    frame = 0 # default count of the frames
    score = 0 # default value for score

    while frame < 10 # works until the frames count won't achieve to ten\
      if spare?
        score += standard_frame_score +  spare_bonus # with spare bomus
      else
        score += standard_frame_score  # simple situation
      end

      frame += 1
      @fir_val_in_frame += 2
    end

    score
  end

  private
  # spare method - returns true if spare, otherwise returns false
  def spare?
    # if sum of current and next frames is equal to ten, returns true, otherwise returns false
    if @rolls[fir_val_in_frame].to_i + @rolls[fir_val_in_frame + 1].to_i == 10
      true
    else
      false
    end
  end

  # standard_frame_score method -  returns sum of the values in the frame
  def standard_frame_score
    @rolls[fir_val_in_frame].to_i + @rolls[fir_val_in_frame + 1].to_i
  end

  # spare_bonus method - returns values that equal to first value in the next frame
  def spare_bonus
    @rolls[fir_val_in_frame + 2].to_i
  end
end


# game = BowlingGame.new
# game.pins([2, 5]) # takes array with numbers as argument
# puts game.score
