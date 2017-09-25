class Players
  def initialize
    @gold_coins = 0
    @health = 10
    @lives = 5
  end

  def gold_coins
    @gold_coins
  end

  def health
    @health
  end

  def lives
    @lives
  end

  def level_up
    @lives += 1
    puts "Nice! You got a level up!"
  end

  def collect_treasure
    @gold_coins += 1
    puts "ch-ching, you collected some coin"
    if (@gold_coins % 10) == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    puts "ouch! #{damage} damage"
    if @health_points < 1
      @lives -= 1
      @health_points = 10
      puts "You dead. You lose a life !!"
    elsif @health_points < 1 && @lives == 1
      self.restart
      puts "You died!"
    end
  end

  def restart
    puts "New game"
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end
end

first_player = Players.new
first_player.collect_treasure
first_player.do_battle(2)
