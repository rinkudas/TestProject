#!/usr/bin/env ruby
require_relative './lib/roller'
require_relative './lib/display'
  
module Dice

  begin
    args = ARGV
    if args.size == 0
	    puts "Arguments are missing"
	    exit false
	  end
    dice = []
    args.map do |arg|
      sides, count = arg.split(',').map(&:to_i)
      count.times.map do
        dice << Die.new(sides)
      end
    end
	  result = Dice::Roller.new(dice).roll_dice
    Display.new(result).display_format
  end

  exit
end
