require 'date'

class Meetup
  WEEKS = {
    'first' => (1..7), 'second' => (8..14), 'third' => (15..21),
    'teenth' => (13..19), 'fourth' => (22..28), 'fifth' => (29..31),
    'last' => (21..31).to_a.reverse
  }
  
  def initialize(year, month)
    @year = year
    @month = month
  end
  
  def day(day, schedule)
    WEEKS[schedule.downcase].each do |x|
      if Date.valid_date?(@year, @month, x)
        date = Date.civil(@year, @month, x)
        return date if date.send "#{day.downcase}?"
      end
    end
    nil
  end
end
