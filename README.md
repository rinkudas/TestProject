## Dice Roller

This is a simple Dice rolling application implemented in Ruby.

## Features
- Rolling a single die
- Rolling a die multiple times
- Rolling combination of dice of different sides multiple time
- Can be used passing arguments from command line
- Can be used as user interective command line application
## Usage
- Download this project in your local machine
- run ``` cd TestProject ```
- run ``` ruby roll_dice.rb 6,2 8,1 ```
- It will output something similar to
  ```
  ******* OUTPUT *******
  ----------------------
  Total: 13
  Die1 with side 6: 1
  Die2 with side 6: 6
  Die3 with side 8: 6 ```
- run ``` ruby roll_dice_interactive.rb ```
- It will output something similar to
  ```
  How many dice do you want to roll?
  2
  Enter number of sides for die 1:
  6
  Enter number of sides for die 2:
  8
  ******* OUTPUT *******
  ----------------------
  Total: 4
  Die1 with side 6: 3
  Die2 with side 8: 1
  ```
## Testing
Install ruby gem Rspec in your local system by running command ``` gem install rspec ```. Then inside Testproject folder, run ``` rspec ```. It will run all test cases.
