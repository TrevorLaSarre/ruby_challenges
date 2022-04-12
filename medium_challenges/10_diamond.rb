class Diamond
  def self.make_diamond(input)
    letters = ('A'..input).to_a + ('A'...input).to_a.reverse

    letters.each_with_index.with_object("") do |(letter, idx), diamond|
      side_spaces = ((letters.size / 2) - idx).abs
      center_spaces = (letters.size - (side_spaces * 2) - 2).abs
      middle = letter.eql?('A') ? '' : "#{' ' * center_spaces}#{letter}"
      diamond << "#{' ' * side_spaces}#{letter}#{middle}#{' ' * side_spaces}\n"
    end
  end
end
