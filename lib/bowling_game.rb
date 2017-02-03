class BowlingGame

  # pins method - counts the score
  def pins(rolls) # takes the array with numbers as parameter
    @rolls = rolls
  end

  # score method - simply returns the value passed to instance variable
  def score
    frame = 0 # default count of the frames
    score = 0 # default value for score
    curr_frame = 0 # by default to first frame

    while frame < 10 # works until the frames count won't achieve to ten\
      if spare?(curr_frame)
        score += 10 + @rolls[curr_frame + 2].to_i # with spare
      else
        score += @rolls[curr_frame].to_i + @rolls[curr_frame + 1].to_i # simple situation
      end

      frame += 1
      curr_frame += 2
    end

    score
  end

  private
  # spare method - returns true if spare, otherwise returns false
  def spare?(curr_frame) # takes the current and next frames
    # if sum of current and next frames is equal to ten, returns true, otherwise returns false
    if @rolls[curr_frame].to_i + @rolls[curr_frame + 1].to_i == 10
      true
    else
      false
    end
  end
end


# game = BowlingGame.new
# game.pins([2, 5]) # takes array with numbers as argument
# puts game.score
