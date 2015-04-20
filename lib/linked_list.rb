require_relative 'linked_list_item'

class LinkedList

  attr_reader :size
  attr_accessor :last

  def initialize(*parms)
    @size = 0
    parms.each do |payload|
      push(payload)
    end
  end

  def get(index)
    puts "def get(index)"
    if index < 0 or index > @size
      raise IndexError
    elsif index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        current_node = current_node.next_item
      end
      current_node.payload
      puts current_node.payload
    end
  end

# push(payload) section

  def push(payload)
    new_item = LinkedListItem.new(payload)
    puts "def push(payload)"
    puts new_item
    if @first_item.nil?
      @first_item = new_item
      @last_item = new_item
    else
      @last_item.next_item = new_item
    end
    @size += 1
    @last_item = new_item
    puts @size
    puts @last_item
  end


end