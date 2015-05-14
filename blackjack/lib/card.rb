class Card
  def initialize(suit, number)
    @suit = suit
    @number = number
  end

  def display

     ---------
    |         |
    |#{number}|
    |         |
    | #{suit} |
    |         |
     ---------
  end


  def show_dealer_cards
---------DEALER'S HAND---------

     ---------   ---------
    |         | |         |
    |#{number}| |#{number}|
    |         | |         |
    | #{suit} | | #{suit} |
    |         | |         |
     ---------   ---------
  end

  def show_your_cards
-----------YOUR HAND-----------
     ---------   ---------
    |         | |         |
    |#{number}| |#{number}|
    |         | |         |
    | #{suit} | | #{suit} |
    |         | |         |
     ---------   ---------
  end


 def display_value
    case value
    when [#] then "J"
    when [#] then "Q"
    when [#] then "K"
    when [#] then "A"
    else
      value
    end
  end
end
