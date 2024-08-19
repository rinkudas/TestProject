module Dice
  class Display
    def initialize(result)
      @result = result
      @total = @result.map { |die| die.output }.reduce(:+)
    end
    
    def display_format
      puts "******* OUTPUT *******"
      puts "-"*22
      puts "Total: #{@total}"

      @result.each.with_index(1) do |value, index|
        puts "Die#{index} with side #{value.die.sides}: #{value.output}"
      end
    end
  end
end

