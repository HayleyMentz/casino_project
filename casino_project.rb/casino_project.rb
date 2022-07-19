require_relative 'player'
require_relative 'high_low'

class Casino
  def initialize
    @player = Player.new
    show_menu
  end

  def show_menu
    puts 'What do you want to do?'
      puts '1. Slots'
      puts '2. High/Low'
      puts '3. Check wallet'
      puts '4. Exit'
      response = gets.strip.to_i
      raise "Bad Input" unless response > 0 && response < 5
      case response
      when 1
        # todo: slots
      when 2
        # high/low
      when 3
        puts "you have $#{@player.money}"
      when 4
        puts "Have a nice day!"
        Exitelse
      rescue StandardError => e
        puts e
        retry
    end
  end
end
  Casino.new

# code for rolling dice
class Dice
  def initialize
    roll
  end
  
  def roll
    @die1 = 1 + rand(6)
    @die2 = 1 + rand(6) 
  end
  
  def show_dice
    print "Die1: ", @die1, " Die2:", @die2
  end
  
  def show_sum
    print "Sum of dice is ", @die1 + @die2, ".\n"
  end 
 end

 
 