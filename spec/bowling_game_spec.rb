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

  it 'scores of simple try and spare try' do
    game.pins([4,3] + [5,5] + [7,1]) # 4+3(7) + 5+5(10 +spare(7)) + 7+1(8) = 7 + 17 + 8 = 32
    expect(game.score).to eq(32)
  end

  it 'scores of simple try and strike' do
    game.pins([4,3] + [10] + [8,1]) # 4+3(7) + 10(strike + 8 + 1) + 8+1 = 7 + 19 + 9 = 35
    expect(game.score).to eq(35)
  end


  it 'scores a game with strike' do
    game.pins([10,5,3] + [0])
    expect(game.score).to eq(26)
  end

  it 'simple try + try with strike' do
    game.pins([10,])
  end

  it 'scores a perfect game' do
    game.pins([10]*12)
    expect(game.score).to eq(300)
  end
end