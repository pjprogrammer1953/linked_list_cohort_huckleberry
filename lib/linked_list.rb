require_relative 'linked_list_item'

class LinkedList

  attr_reader :size
#  attr_reader :first_item
#  attr_reader :last_item

  def initialize(*parms)
    @size = 0
    parms.each do |payload|
      push(payload)
    end
  end

  def last
    if @last_item.nil?
      return
    else
      @last_item.payload
    end
  end

 # def to_s
 #   str = "| "
 #   current_item = @first_item
 ###   until current_item.nil?
 #     str << current_item.payload
 #     punctuation = current_item.last? ? " " : ", "
 #     str << punctuation
 #     current_item = current_item.next_item
 #   end
 #   str << "|"
 #   str
 # end

  def get(index)
#    puts "def get(index)"
#    puts index
    if index < 0 or index > @size
      raise IndexError
    elsif index == 0
      @first_item.payload
    else
      current_node = @first_item
      index.times do
        current_node = current_node.next_item
      end
# return current_node.payload
      current_node.payload
    end
  end

# push(payload) section

  def push(payload)
    new_item = LinkedListItem.new(payload)
#    puts "def push(payload)"
#    puts new_item
    if @first_item.nil?
      @first_item = new_item
      @last_item = new_item
    else
      @last_item.next_item = new_item
      @last_item = @last_item.next_item
    end
#    puts @last_item
    @size += 1

  end


end