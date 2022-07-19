require_relative 'deck'
class HighLOw
  def initialize(player)
    @player = player
    @deck = Deck.new
    player 
  end

  def player
    puts "Place your wager scallywag!"
    wager = gets.strip.to_iif wager > 0
    first_card = @deck.pull_card
    second_card = @deck.pull_card
    puts "The card is #{first_card}"
    print "(higher/lower): "
    guess = gets.strip.downcase
    puts "The second card is #{second_card} "
    if guess == 'higher'
      if first_card.to_i < <= second_card.to_i
        puts "Aye! You won!"
      else 
        puts "You lose mate!"
      end
      wager *= -1 if
      @player.money *= wager if !is_correct
  else
    puts "go home"
    return
  end
end
end 