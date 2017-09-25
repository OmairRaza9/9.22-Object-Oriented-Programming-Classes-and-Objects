class Cat

  def initialize(name, preffered_food, meal_time)
    @name = name
    @preffered_food = preffered_food
    @meal_time = meal_time.to_i
  end

  def eats_at
    if @meal_time <= 11
    "#{@meal_time} AM"
    else
    "#{@meal_time - 12} PM"
    end
  end

  def meow
    "sup, my name is #{@name}, my favorite food #{@preffered_food}, and I like to eat at #{@meal_time}"
  end
end


cw = Cat.new("Captain Whiskers", "Fish", 23)
patches = Cat.new("patches", "rats", 2)

puts cw.meow
puts patches.meow
