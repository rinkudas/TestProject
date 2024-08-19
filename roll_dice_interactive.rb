require_relative './lib/roller'
require_relative './lib/display'

  
module Dice

  begin
    puts "How many dice do you want to roll?"
    n_dice = gets.chomp.to_i
    i = 0
    dice = []
    while n_dice > i
      puts "Enter number of sides for die #{i+1}:"
      sides = gets.chomp.to_i
      dice << Die.new(sides)
      i += 1
    end
    result = Dice::Roller.new(dice).roll_dice
    Display.new(result).display_format
  end

  exit
end
