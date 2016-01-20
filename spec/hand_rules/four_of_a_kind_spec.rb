require 'spec_helper'

module HandRules
  describe FourOfAKind do
    describe '.match_rule?' do
      subject { described_class.new.match_rule?(hand) }
      let(:hand) { cards }

      context 'when the hand contains a four of a kind' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('2H'),
            Card.new('JH'),
            Card.new('2S'),
            Card.new('2D'),
          ]
        end

        it 'returns true' do
          expect(subject).to be_truthy
        end
      end

      context 'when the hand does not contain a four of a kind' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('2S'),
            Card.new('JH'),
            Card.new('2S'),
            Card.new('4H'),
          ]
        end

        it 'returns false' do
          expect(subject).to be_falsey
        end
      end
    end
  end
end
