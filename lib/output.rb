module Dice
  class Output
    attr_reader :die, :output

    def initialize(die, output)
      @die = die
      @output = output
    end
  end
end