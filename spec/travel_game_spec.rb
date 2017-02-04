require_relative '../lib/travel-game'

describe TravelGame do
  let (:game) { TravelGame.new }

  it 'backs by two steps when 9' do
    game.steps(9)
    expect(game.game_result).to eq(7)
  end
end