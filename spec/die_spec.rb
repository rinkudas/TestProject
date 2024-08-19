require './lib/die'
RSpec.describe Dice::Die do
  let(:die) { Dice::Die.new(6) }

  it 'creates a Die class object' do
    expect(die).to be_kind_of(Dice::Die)
  end

  it 'has a roll_die method' do
    expect(die).to respond_to(:roll_die)
  end

  describe '#roll_die' do
    it 'returns a value between 1 and the number of sides' do
      die = Dice::Die.new(20)
      roll = die.roll_die
      expect(roll).to a_value_between(1, 20)
    end

    it 'returns random values on multiple rolls' do
      die = Dice::Die.new(8)
      rolls = Array.new(100) { die.roll_die }
      expect(rolls.uniq.size).to a_value > 1
    end
  end
end