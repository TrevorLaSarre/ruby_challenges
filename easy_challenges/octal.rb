class Octal
  def initialize(num)
    @num = num
  end
  
  def to_decimal
    return 0 if @num.match?(/[^0-7]/)
    (0...@num.size).map { |x| @num.reverse[x].to_i * (8**x) }.sum
  end
end