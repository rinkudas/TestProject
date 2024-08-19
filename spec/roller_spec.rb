require './lib/roller'
require './lib/display'
RSpec.describe Dice::Roller do
  let(:die1) { Dice::Die.new(6) }
  let(:die2) { Dice::Die.new(6) }
  let(:die3) { Dice::Die.new(8) }
  let(:roller) { Dice::Roller.new([die1, die2, die3])}

  it 'creates a Die class object' do
    expect(roller).to be_kind_of(Dice::Roller)
  end

  it 'has a roll_dice method' do
    expect(roller).to respond_to(:roll_dice)
  end

  describe '#roll_dice' do
    it 'rolls all dice and prints the results' do

      allow(die1).to receive(:roll_die).and_return(3)
      allow(die2).to receive(:roll_die).and_return(5)
      allow(die3).to receive(:roll_die).and_return(6)
  
      roller = Dice::Roller.new([die1, die2, die3])
  
      expect do
        result = roller.roll_dice
        Dice::Display.new(result).display_format
      end.to output("******* OUTPUT *******\n----------------------\nTotal: 14\nDie1 with side 6: 3\nDie2 with side 6: 5\nDie3 with side 8: 6\n").to_stdout
    end
  end
end