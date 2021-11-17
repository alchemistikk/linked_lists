class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    @tail = value
    if @head.nil?
      @head = value
    else
      value.next = value
    end
  end

  def prepend(value)
    @head = value
    if @head.nil?
      @tail = value
    else
      value.next = value
    end
  end

end

class Node
  attr_accessor :next, :data

  def initialize(data)
    @next = nil
    @data = data
  end
end
