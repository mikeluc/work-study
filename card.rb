class Card
  #attr_reader :rank, :suit #allow people to get / read the value of the rank and the suit exposes the val outside the class
  #attr_writer :rank, :suit # people to change the value

  attr_accessor :rank, :suit # allows to get /change values merges both

  def initialize(rank, suit)
    @rank = rank #instance variable @var / saves the rank
    @suit = suit #settting up instance vars to be reffered elsewhere
  end

  #def rank
    #@rank #exposes rank and lets you use it /if soomeone asks for rank here it is
  #end


  #def rank=(rank) #method or function
   # @rank = rank
 # end
    #encapsulation - hiding the innerworkings as much as possible distrust assume the worst
  def output_card #method or function
    puts "#{self.rank} of #{self.suit}" #self. accesses teh object itself whats the thing in context what si the thing were dealing with / the specific instance
  end

  def self.random_card #class method / self. method lets you run a method without an instance 
    
     Card.new(rand(10), :spades) # not commonly used REFACTORED -move code around
  end


end

class Deck

  def initialize

    @cards = []

    @rank = [:ace, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, :Jack, :Queen, :King]

    @suit = [:s
      pades, :Hearts, :Diamonds, :Clubs]
    


    @rank.each do |rank|
      @suit.each do |suit|
        @cards<<Card.new(rank,suit)
      end
    end

  end

  def shuffle
    @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end

  def deal
    @cards.shift 
  end


end

deck = Deck.new
deck.shuffle
deck.deal
deck.output

#card = Card.random_card #triggers initialize
#card.rank = 9 #changes rnk value
#card.output_card

class Card
 def output_hello
   puts "Hello"
 end
end

class Deck
 def create_card_and_output
   card = Card.new
   card.output_hello
 end
end

deck = Deck.new
deck.create_card_and_output

