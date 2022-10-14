require 'rspec'
require './lib/turn'
require './lib/card'

describe Turn do
  describe '#initialize' do
    it 'is an instance of turn' do
      card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
      turn = Turn.new('Juneau', card)

      expect(turn).to be_instance_of(Turn)
    end

    it 'has a card' do
      card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
      turn = Turn.new('Juneau', card)

      expect(turn.card).to eq(card)
    end

    it 'has a different card' do
      card = Card.new('Which planet is closest to the sun?', 'Mercury', :STEM)
      turn = Turn.new('Saturn', card)

      expect(turn.card).to eq(card)
    end

    it 'has a guess' do
      card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
      turn = Turn.new('Juneau', card)

      expect(turn.guess).to eq('Juneau')
    end

    it 'has a different guess' do
      card = Card.new('Which planet is closest to the sun?', 'Mercury', :STEM)
      turn = Turn.new('Saturn', card)

      expect(turn.guess).to eq('Saturn')
    end
  end

  describe '#correct?' do
    it 'checks if correct guess matches answer' do
      card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
      turn = Turn.new('Juneau', card)

      expect(turn.correct?).to be true
    end

    it 'checks if incorrect guess matches answer' do
      card = Card.new('Which planet is closest to the sun?', 'Mercury', :STEM)
      turn = Turn.new('Saturn', card)

      expect(turn.correct?).to be false
    end
  end

  describe '#feedback' do
    it 'provides feedback to reflect correct answer' do
      card = Card.new('What is the capital of Alaska?', 'Juneau', :Geography)
      turn = Turn.new('Juneau', card)

      expect(turn.feedback).to eq('Correct!')
    end

    it 'provides feedback to reflect incorrect answer' do
      card = Card.new('Which planet is closest to the sun?', 'Mercury', :STEM)
      turn = Turn.new('Saturn', card)

      expect(turn.feedback).to eq('Incorrect.')
    end
  end
end
