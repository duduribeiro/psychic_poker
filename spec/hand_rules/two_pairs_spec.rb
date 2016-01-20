require 'spec_helper'

module HandRules
  describe TwoPairs do
    describe '.match_rule?' do
      subject { described_class.new.match_rule?(hand) }
      let(:hand) { cards }

      context 'when the hand contains two pairs' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('2H'),
            Card.new('JH'),
            Card.new('KS'),
            Card.new('JD'),
          ]
        end

        it 'returns true' do
          expect(subject).to be_truthy
        end
      end

      context 'when the hand does not contain two pairs and contain only one pair' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('2S'),
            Card.new('JH'),
            Card.new('KS'),
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
