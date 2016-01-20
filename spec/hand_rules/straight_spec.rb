require 'spec_helper'

module HandRules
  describe Straight do
    describe '.match_rule?' do
      subject { described_class.new.match_rule?(hand) }
      let(:hand) { cards }

      context 'when the hand contains a sequence' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('4H'),
            Card.new('6H'),
            Card.new('5S'),
            Card.new('3D'),
          ]
        end

        it 'returns true' do
          expect(subject).to be_truthy
        end
      end

      context 'when the hand does not contain a sequence' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('4H'),
            Card.new('2H'),
            Card.new('5S'),
            Card.new('3D'),
          ]
        end

        it 'returns false' do
          expect(subject).to be_falsey
        end
      end
    end
  end
end
