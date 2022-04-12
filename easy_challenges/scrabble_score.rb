class Scrabble

  SCORES = 
    { 
    'AEIOULNRST' => 1,
    'DG'         =>	2,
    'BCMP'       =>	3,
    'FHVWY'      => 4, 
    'K'          => 5,
    'JX'         =>	8,
    'QZ'         =>	10
    }
    
  def initialize(word)
    @word = word
  end
  
  def score
    return 0 if @word.nil? || @word.empty?

    @word.chars.inject(0) do |points, char|
      SCORES.each_key do |key|
        points += SCORES[key] if key.include?(char.upcase)
      end
      
      points
    end
  end
  
  def self.score(word)
    self.new(word).score
  end
end
