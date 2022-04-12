class PerfectNumber
  def self.classify(num)
    raise StandardError if num < 1
    positive_divisiors = (1...num).select { |x| num % x == 0 }
    return 'perfect' if positive_divisiors.sum == num
    return (positive_divisiors.sum < num ? 'deficient' : 'abundant')
  end
end