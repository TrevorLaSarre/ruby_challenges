class Element
  def initialize(datum, next_element=nil)
    @value = datum
    @next_element = next_element
  end

  def datum
    @value
  end

  def tail?
    !@next_element
  end

  def next
    @next_element
  end
end

class SimpleLinkedList
  def initialize
    @self = []
  end

  def self.from_a(arr)
    list = SimpleLinkedList.new
    arr.to_a.reverse.each_with_object(list) { |x| list.push(x) }
  end

  def size
    @self.size
  end

  def empty?
    @self.empty?
  end

  def push(data)
    @self.prepend(Element.new(data, @self[0]))
  end

  def peek
    empty? ? nil : self.head.datum
  end

  def pop
   @self.delete(@self[0]).datum
  end

  def head
    @self[0]
  end

  def to_a
    empty? ? [] : @self.map { |x| x.datum }
  end

  def reverse
    list = SimpleLinkedList.new
    to_a.each_with_object(list) { |x| list.push(x) }
  end
end
