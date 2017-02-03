require_relative '../lib/bowling_game'

describe BowlingGame do
  it 'scores a gutter game' do
    game = BowlingGame.new
    game.pins([0])
    expect(game.score).to eq(0)
  end

  it 'scores a first move with two rolls' do
    game = BowlingGame.new
    game.pins([2, 5])
    expect(game.score).to eq(7)
  end
end