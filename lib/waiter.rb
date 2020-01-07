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
  
  def meals
    Meal.all.select do |meal|
      meal.waiter == self
    end
  end
 
  def best_tipper
    
  end 
 
  def new_meal(waiter, customer, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
end 
  