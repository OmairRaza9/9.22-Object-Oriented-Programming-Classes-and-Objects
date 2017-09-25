class Paperboy

  def initialize
    @experience = 0
    @earnings = 0
    @quota = 50
  end

  def name
    @name
  end

  def earnings
    @earnings
  end

  def name=(name)
    @name = name
  end

  def start_street=(start)
    @start_street = start.to_i
  end

  def end_street=(endd)
    @end_street = endd.to_i
  end

  def quota
    @quota += (@experience/2)
  end

  def deliver
    @experience = @end_street - @start_street + 1
    if @experience <= @quota
      @earnings += 0.25*@experience
      puts "\nYou delivered #{@experience} papers today."
      if @experience < @quota
        @earnings = @earnings - 2
        puts "\nSorry boy, gonna have to cut two bucks from your pay."
      end
    elsif @experience >= @quota
      @earnings += (0.25*@quota + 0.5*(@experience - @quota))
      puts "\nWow! You delivered #{@experience} papers today!"
    end
    self.quota
    puts "\nBased on your performance, you will need to deliver #{@quota} papers tomorrow."
  end

  def report
    puts "\nI'm #{@name}, I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
    puts "Tomorrow, I'm gonna have to deliver #{@quota} papers."
  end



end
