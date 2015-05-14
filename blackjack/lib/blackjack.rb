require_relative 'player'
require_relative 'deck'
require_relative 'card'

class Game

  def initialize
    @dealer = Player.new
    @you = Player.new
    @dealer.deck = Deck.new
    @you.deck = Deck.new
    @dealer.name = "Dealer"
    @you.name = "You"
  end

  def start
    puts "Ready to lose? PRESS ANY KEY"
      gets

    loop do
      system('clear')
      your_card1 = @you.draw
      your_card2 = @you.draw
      dealer_card1 = @dealer.draw
      dealer_card2 = @dealer.draw

      puts "Dealer Has: #{@dealer_card1}"
      puts "You Have: #{@your_card1}, #{@your_card2}"
      puts @you.name, your_card.display
      puts @dealer.name, dealer_card.display

      evaluate_hand(your_card, dealer_card)

      print "Press Any Key to Deal Another Card"
      gets
      break if @deck_count.zero?
    end

    announce_winner
    game_over
  end

  def evaluate_hand(sum[all])
    #if value is greater, that card wins.
    #if there is a tie second player wins, lol
    if first_card.value > second_card.value
      puts "first card wins"
      @player_one.score += 1
    else
      puts "second card wins"
      @player_two.score += 1
    end
  end

  def announce_winner
    if @player_one.score >= @player_two.score
      puts "Player one wins with #{@player_one.score}!!"
    else
      puts "Player two wins with #{@player_two.score}!!"
    end
  end

  def game_over
    print "Would you like to play again? (y/n) > "
    response = gets.chomp
    if response == 'y'
      @dealer.deck = Deck.new
      @you.deck = Deck.new
      @dealer.score = 0
      @you.score = 0
      start
    else
      exit
    end
  end
end
