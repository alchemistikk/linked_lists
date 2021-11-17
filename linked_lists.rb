class LinkedList
  attr_accessor :name

  def initialize
    @head = nil
    @tail = nil
    @size = 0
    @index = []
  end

  def append(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      @tail.next = value
      value.previous = @tail 
      @tail = value 
    end
    @size += 1
    @index.push(value)
  end

  def prepend(value)
    if @head.nil?
      @head = value
      @tail = value
    else
      value.next = @head
      value.previous = value
      @head = value
    end
    @size += 1
    @index.unshift(value)
  end

  def size
    @size
  end

  def head
    @head
  end

  def tail
    @tail
  end

  def at(index)
    @index[index]
  end

  def pop
    return if @head.nil?

    @tail = @tail.previous
    @tail.next = @tail
    @size -= 1
    @index.pop
  end

  def contains?(value)
    @index.include?(value)
  end

  def find(value)
    @index.index(value) || nil
  end
end

class Node
  attr_accessor :next, :previous, :data

  def initialize(data)
    @next = nil
    @previous = nil
    @data = data
  end
end

linkedlist = LinkedList.new
node1 = Node.new(5)
node2 = Node.new("pie")
node3 = Node.new(49)
node4 = Node.new("pizza")

linkedlist.prepend(node1)
linkedlist.append(node2)
linkedlist.prepend(node3)
linkedlist.append(node4)
p linkedlist.size
p linkedlist.head
p linkedlist.tail
p linkedlist.at(1)
linkedlist.pop
p linkedlist.size
p linkedlist.contains?(node1)
p linkedlist.contains?(100)
p linkedlist.find(node3)
p linkedlist.find(node4)
