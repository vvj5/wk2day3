class Deck
  def initialize(cards)
    @cards = Array.new
    suits = [spades, clubs, hearts, diamonds]
    suits.each do |suit|
      (2..10).each do |number|
        @cards.push(Card.new(suit, number))
      end
    end
    #   @cards.push(Card.new(suit, 10)) #J
    #   @cards.push(Card.new(suit, 10)) #Q
    #   @cards.push(Card.new(suit, 10)) #K
    #   @cards.push(Card.new(suit, 11)) #A
    # end
  #   @cards = @cards.shuffle
  end

  def deal
    @cards.pop
  end

  def deck_count
    @cards.count
  end
end
