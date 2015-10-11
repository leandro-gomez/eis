require 'rspec'
require_relative '../model/board'
require_relative '../model/ship'

describe Board do
  subject { described_class.new }

  it { expect(subject).to be_empty }

  describe '#place_horizontally' do
    let(:ship) { Ship.new }
    let(:positionA) { "A" }
    let(:positionB) { "1" }

    context 'with a empty board' do
      before :each do
        subject.place_horizontally ship, positionA, positionB
      end

      it {expect(subject).to_not be_empty}

      describe "#taken?" do
        it {expect(subject).to be_taken(positionA, positionB)}
      end

      #it "takes also ship's lenght" do

      #  delta_position = positionB.to_i + ship.lenght - 1
      #  expect(subject.taken? positionA, delta_position)
      #end

    end
  end
end
