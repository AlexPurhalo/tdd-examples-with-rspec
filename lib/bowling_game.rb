class BowlingGame
  def initialize; @fir_val_in_frame = 0; end

  def fir_val_in_frame; @fir_val_in_frame; end

  def pins(rolls); @rolls = rolls; end

  def score
    i, score, fir_val = 0, 0, 0

    while i < 10
      if @rolls[fir_val].to_i == 10
        score += 10 + @rolls[fir_val + 1].to_i + @rolls[fir_val + 2].to_i
        fir_val += 1
      elsif @rolls[fir_val].to_i + @rolls[fir_val+1].to_i == 10
        score += 10 + @rolls[fir_val + 2].to_i
        fir_val += 2
      else
        score += @rolls[fir_val].to_i + @rolls[fir_val + 1].to_i
        fir_val += 2
      end

      i += 1
    end

    score
  end
end

game = BowlingGame.new

# ([1,4] + [4,5] + [6,4,5] + [5,5,10] + [10,0,1] + [0,1])
# ( 5    + 9(14) + 15(29)  + 20(49)   +  11(60)  + 1(61)
game.pins([2,8,4,2,8,10,0,1])
# game.pins([1,4] + [4,5] + [6,5] + [5,5] + [10] + [0,1])
puts game.score
# alex_attempts =  # 133
