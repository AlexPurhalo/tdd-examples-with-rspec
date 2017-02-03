require_relative '../lib/bowling_game'

describe BowlingGame do
  let(:game) { BowlingGame.new }

  it 'scores a gutter game' do
    game.pins([0])
    expect(game.score).to eq(0)
  end

  it 'scores a first move with two rolls' do
    game.pins([2, 5])
    expect(game.score).to eq(7)
  end

  it 'scores a game with spare' do
    game.pins([4,6,5] + [0])
    expect(game.score).to eq(20)
  end

  it 'scores a game with strike' do
    game.pins([10,5,3] + [0])
    expect(game.score).to eq(26)
  end

  it 'scores a perfect game' do
    game.pins([10]*12)
    expect(game.score).to eq(300)
  end
end