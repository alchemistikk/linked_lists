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
      @tail = value
    else
      @tail.next = entry # At this point @tail holds the Node, so we can call the Node's setter for #next
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
