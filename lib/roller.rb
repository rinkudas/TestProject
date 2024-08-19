require_relative './die'
require_relative './output'
module Dice
  class Roller
    def initialize(dice)
      @dice = dice
    end
    def roll_dice
      result = []
      @dice.each do |die|
        result << Dice::Output.new(die, die.roll_die)
      end
      result
    end
  end
end
