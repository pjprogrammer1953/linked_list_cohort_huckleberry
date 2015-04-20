class LinkedListItem
  include Comparable
  attr_accessor :payload
  attr_reader :next_item

  def initialize(data)
    @payload = data
  #  @next_item = next_item
  end

  def last?
    next_item.nil?
  end

  def next_item=(nextItem)
    if self == nextItem
      raise ArgumentError
    else
      @next_item = nextItem
    end
  end

  def last
    unless @last_item.nil?
      @last_item.payload
    end
  end

  def <=>(other)
    if self.payload.class == other.payload.class
      return self.payload <=> other.payload
    end

    # Option 3:
    if self.payload.is_a? Symbol
      1
    elsif self.payload.is_a? Fixnum
      -1
    else # I must be a String
      -1 * (other <=> self)
    end
    # Option 4:
    # class_precedence = [Fixnum, String, Symbol]
    # left_precedence = class_precedence.index(self.payload.class)
    # right_precedence = class_precedence.index(other.payload.class)
    # left_precedence <=> right_precedence
  end

  def ===(other)
    self.equal? other
  end
end