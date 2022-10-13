require 'rspec'
require './lib/turn'
require './lib/card'
require './lib/deck'
require './lib/round'

describe Round do
    describe '#initialize' do
        it 'is an instance of Round' do
            
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)

            round = Round.new(deck)

            expect(round).to be_instance_of(Round)
        end

        it 'has a Deck' do
            
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)

            round = Round.new(deck)

            expect(round.deck).to eq(deck)
        end

        it 'has turns' do

            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)

            round = Round.new(deck)

            expect(round.turns).to eq([])
        end
    end
    
    describe '#current_card' do
        it 'returns the first card in the deck' do
            
            card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
            card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
            card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

            cards = [card_1, card_2, card_3]
            deck = Deck.new(cards)

            round = Round.new(deck)

            expect(round.current_card).to eq(card_1)
        end
    end
end