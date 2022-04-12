class BeerSong
  def self.lyrics
    verses(99, 0)
  end

  def self.verses(start, finish)
    verses = []
    start.downto(finish) { |num| verses << verse(num) }
    verses.join("\n")
  end

  def self.verse(num)
    first_half = "#{phrase(num).capitalize} on the wall, #{phrase(num)}.\n"
    second_half = if num == 0
                    "Go to the store and buy some more, #{phrase(99)} on the wall.\n"
                  else
                    "Take #{num == 1 ? 'it' : 'one'} down and pass it around, " \
                    "#{phrase(num-1)} on the wall.\n"
                  end
    first_half + second_half
  end
 
  def self.phrase(num)
    case num
    when (2..99) then "#{num} bottles of beer"
    when 1       then "#{num} bottle of beer"
    when 0       then "no more bottles of beer"
    end
  end
end
