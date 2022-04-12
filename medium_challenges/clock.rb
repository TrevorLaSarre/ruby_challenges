class Clock
  MINUTES_IN_DAY = 1440
  
  def self.at(hours, minutes = 0)
    self.new(hours, minutes)
  end
  
  def initialize(hours, minutes = 0)
    @total_minutes = (hours * 60) + minutes
  end
  
  def +(minutes)
    @total_minutes += minutes
    self
  end
  
  def -(minutes)
    @total_minutes = (@total_minutes - minutes) % MINUTES_IN_DAY
    self
  end
  
  def ==(other)
    @total_minutes == other.total_minutes
  end
  
  def to_s
    @total_minutes %= MINUTES_IN_DAY
    hours, minutes = @total_minutes.divmod(60)
    format('%02d:%02d', hours, minutes)
  end
  
  protected
  
  attr_reader :total_minutes
end
