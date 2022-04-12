class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    check_validity
  end
  
  def kind
    return 'equilateral' if @sides.all? { |x| x == @sides[0] }
    @sides == @sides.uniq ? 'scalene' : 'isosceles'
  end
  
  private
  
  def check_validity
    if (@sides[0, 2].sum <= @sides[2])
      raise(ArgumentError, 'Invalid lengths') 
    end
  end
end
  
  