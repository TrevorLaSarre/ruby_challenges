class Robot
  attr_accessor :name
  
  @@all_names = []
  
  def initialize
    @name = generate_name
    @@all_names << @name
  end
  
  def generate_name
    output = ''
    2.times { output << ('A'..'Z').to_a.sample }
    output << rand(100-999).to_s
    @@all_names.include?(output) ? generate_name : output
  end
  
  def reset
    old_name = @name
    @name = generate_name
    @@all_names << @name
    @@all_names.delete(old_name)
  end
end