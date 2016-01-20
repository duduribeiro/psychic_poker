require 'spec_helper'

describe Face do
  describe '#face_value' do
    subject { described_class.new(face).face_value }

    context 'with a number char' do
      let(:face) { '5' }

      it 'returns the number itself' do
        expect(subject).to eq 5
      end
    end

    context 'with a letter char' do
      let(:face) { 'T' }

      it 'returns the number conversion of the letter' do
        expect(subject).to eq(10)
      end
    end
  end
end
