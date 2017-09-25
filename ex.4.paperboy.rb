class Paperboy

  def initialize(experience, earning, quota, name )
    @experience = 0
    @earnings = 0
    @quota = 50
    @name = name
  end

  def quota
  @quota
  end

  def start_add =  start
    @start_add = start.to_i
  end

  def end_add = endd
    @end_add = endd.to_i
  end

  def report
    @report
  end

  def deliver
    if @experience = endd - start
      @earnings += @experience * 0.25
      puts "You delivered #{@experience} papers today."
      if @experience < @quota
        (@earnings * 0.25 - 2)
        puts "Sorry boy, I'll have to take 2 bucks off your pay"
      end
    elsif @experience > @quota
      @earnings += (0.25*@quota + 0.5*(@experience - @quota))
      puts "Whoa! You delivered #{@experience} papers today!"
    end

    def newquota
      @newquota = (@experience * 0.5) + @quota
    end

    def report
      "My name is #{@name} and I've delivered #{@experience} number of papers, and earned #{@earnings} so far!"
end
