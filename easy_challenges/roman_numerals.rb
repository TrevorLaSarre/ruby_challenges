class RomanNumeral
  CHART = { (1..3) => ['I', 'X', 'C', 'M'],
             4     => ['IV', 'XL', 'CD'],
             5     => ['V', 'L', 'D'],
            (6..8) => ['VI', 'LX', 'DC'],
             9     => ['IX', 'XC', 'CM'] }
          
  def initialize(number)
    @number = number
  end

  def to_roman
    digits.each_with_index.with_object("") do |(digit, idx), result|
      case digit
      when 0
        next
      when (1..3)
        result << (CHART[(1..3)][place(idx)] * digit)
      when (6..8)
        numeral = CHART[(6..8)][place(idx)]
        result << numeral += numeral[-1] * (digit - 6)
      else
        result << CHART[(digit)][place(idx)]
      end
    end
  end

  private

  def digits
    @number.digits.reverse
  end

  def place(idx)
    (digits.size - 1) - idx
  end
end