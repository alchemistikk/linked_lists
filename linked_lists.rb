class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def append(value)
    @tail = value
    if @head.nil?
      @head = value
    else
      value.next = value
    end
    @size += 1
  end

  def prepend(value)
    @head = value
    if @head.nil?
      @tail = value
    else
      value.next = value
    end
    @size += 1
  end

  def size
    @size
  end
end

class Node
  attr_accessor :next, :data

  def initialize(data)
    @next = nil
    @data = data
  end
end

linkedlist = LinkedList.new
node1 = Node.new(5)
node2 = Node.new("pie")
linkedlist.prepend(node1)
linkedlist.append(node2)
p linkedlist.size
