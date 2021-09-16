class Card
  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  let(:card) { Card.new('Spade', 'Ace') }

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spade')
  end

  # it 'has a custom error message' do
  #   card.suit = 'Nonsense'
  #   comparison = 'Spades'
  #   expect(card.suit).to eq(comparison), "Hey I expected #{comparison} but i got #{card.suit} instead"
  # end
end
