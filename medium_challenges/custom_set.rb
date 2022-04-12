class CustomSet
  def initialize(arr = [])
    @contents = arr.uniq
  end
  
  def empty?
    contents.empty?
  end
  
  def contains?(num)
    contents.include?(num)
  end
  
  def subset?(other_set)
    contents.each do |x|
      return false unless other_set.contains?(x)
    end
    true
  end
  
  def disjoint?(other_set)
    combined = contents.concat(other_set.contents)
    combined == combined.uniq
  end
  
  def eql?(other_set)
    contents.sort == other_set.contents.sort
  end
  
  def ==(other_set)
    eql?(other_set)
  end
  
  def add(num)
    @contents << num unless contains?(num)
    self
  end
  
  def intersection(other_set)
    arr = contents.select { |x| other_set.contains?(x) }
    CustomSet.new(arr)
  end
  
  def difference(other_set)
    arr = contents.reject { |x| other_set.contains?(x) }
    CustomSet.new(arr)
  end
  
  def union(other_set)
    CustomSet.new(contents.concat(other_set.contents))
  end
  
  protected
  
  attr_reader :contents
end