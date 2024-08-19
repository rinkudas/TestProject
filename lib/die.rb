module Dice
  class Die
    attr_reader :sides

    def initialize(sides)
      @sides = sides
    end

    def roll_die
      rand(1..sides)
    end
  end
end