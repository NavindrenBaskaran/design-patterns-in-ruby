require 'byebug'

class RestaurantServer
  def initialize(meal_factory)
    @meal_factory = meal_factory
  end

  def serve!
    puts @meal_factory.new_utensil.provide
    puts @meal_factory.new_dish.provide
  end
end

class SushiMealFactory
  def new_dish
    MaguroSashimi.new
  end

  def new_utensil
    Chopsticks.new
  end
end

class SteakMealFactory
  def new_dish
    FiletMignon.new
  end

  def new_utensil
    Knife.new
  end
end

class Chopsticks
  def initialize
    @message = "Chopsticks Coming!"
  end

  def provide
    @message
  end
end

class MaguroSashimi
  def initialize
    @message = "Maguro Sashimi on the way, weird name though!"
  end

  def provide
    @message
  end
end

class FiletMignon
  def initialize
    @message = "Filet Mignon on the way."
  end

  def provide
    @message
  end
end

class Knife
  def initialize
    @message = "Knife, a really sharp one handle with care."
  end

  def provide
    @message
  end
end

meal_factory = SushiMealFactory.new
restaurant_server = RestaurantServer.new(meal_factory)

restaurant_server.serve!
