require 'spec_helper'

module HandRules
  describe Flush do
    describe '.match_rule?' do
      subject { described_class.new.match_rule?(hand) }
      let(:hand) { cards }

      context 'when the hand contains cards with the same suit' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('4S'),
            Card.new('TS'),
            Card.new('JS'),
            Card.new('AS'),
          ]
        end

        it 'returns true' do
          expect(subject).to be_truthy
        end
      end

      context 'when the hand does not contain cards with the same suit' do
        let(:cards) do
          [
            Card.new('2S'),
            Card.new('4S'),
            Card.new('TS'),
            Card.new('JS'),
            Card.new('AH'),
          ]
        end

        it 'returns false' do
          expect(subject).to be_falsey
        end
      end
    end
  end
end
