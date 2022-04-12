class Anagram
  def initialize(word)
    @word = word
  end
  
  def match(potentials)
    potentials.each_with_object([]) do |x, result|
      next if x.downcase == @word.downcase
      result << x if same_letters?(x)
    end
  end
  
  private
  
  def same_letters?(other_word)
    @word.downcase.chars.sort == other_word.downcase.chars.sort
  end
end
 