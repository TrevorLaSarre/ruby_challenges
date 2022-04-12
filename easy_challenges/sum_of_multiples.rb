class SumOfMultiples
  def initialize(*set)
    @set = set
  end
  
  def to(num)
    result = @set.each_with_object([]) do |x, result|
      result << (1...num).select { |y| (y % x).zero? }
    end
    
    result.flatten.uniq.sum
  end
  
  def self.to(num)
    self.new(3, 5).to(num)
  end
end
