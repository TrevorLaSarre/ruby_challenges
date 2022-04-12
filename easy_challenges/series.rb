class Series
  def initialize(num)
    @num = num
  end
  
  def slices(x)
    raise ArgumentError if x > @num.size
    num = @num.chars.map(&:to_i)
    num.each_cons(x).with_object([]) { |group, result| result << group }
  end
end