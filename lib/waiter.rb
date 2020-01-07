class Waiter 
  attr_accessor :name, :yoe
 
  @@all = []
 
  def initialize(name, yoe)
    @name = name
    @yoe = yoe
    @@all << self
  end
 
  def self.all
    @@all
  end

  