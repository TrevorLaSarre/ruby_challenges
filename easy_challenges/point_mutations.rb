# "CLEVER" answer
class DNA
  def initialize(strand)
    @strand = strand
  end
  
  def hamming_distance(other_strand)
    (0...@strand.size).inject(0) do |sum, idx|
      sum + (@strand[idx] <=> other_strand[idx]).to_i.abs
    end
  end
end
