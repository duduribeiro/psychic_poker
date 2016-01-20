require 'spec_helper'

module HandRules
  describe FullHouse do
    describe '.match_rule?' do
      subject { described_class.new.match_rule?(hand) }
      let(:hand) { cards }

      context 'when the hand contains three matching of one rank and two of another' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('2D'),
            Card.new('2H'),
            Card.new('4S'),
            Card.new('4S'),
          ]
        end

        it 'returns true' do
          expect(subject).to be_truthy
        end
      end

      context 'when the hand does not contain three matching of one rank and two of another' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('2S'),
            Card.new('2S'),
            Card.new('3S'),
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
