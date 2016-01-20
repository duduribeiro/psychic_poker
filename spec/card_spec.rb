require 'spec_helper'

describe Card do
  let(:card) { described_class.new('JH') }

  describe '.new' do
    it 'sets the correct face' do
      expect(card.face.face).to eq 'J'
    end

    it 'set the correct suit' do
      expect(card.instance_variable_get(:@suit).suit).to eq 'H'
    end
  end

  describe '#<=>' do
    subject { card <=> other_card }

    context 'with other higher card' do
      let(:other_card) { described_class.new('QS') }

      it 'returns 1' do
        expect(subject).to eq 1
      end
    end

    context 'with other lower card' do
      let(:other_card) { described_class.new('TH') }

      it 'returns -1' do
        expect(subject).to eq -1
      end
    end
  end

  describe 'sorting' do
    subject { [card, other_card].sort }

    context 'with other higher card' do
      let(:other_card) { described_class.new('QS') }

      it 'returns array in the correct order' do
        expect(subject).to eq [other_card, card]
      end
    end

    context 'with other lower card' do
      let(:other_card) { described_class.new('TH') }

      it 'returns array in the correct order' do
        expect(subject).to eq [card, other_card]
      end
    end
  end
end
