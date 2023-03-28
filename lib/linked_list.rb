class LinkedList
  attr_reader :head, :new_node
  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      current_node = head
      while !current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
  end

  def prepend(data)
    new_node = Node.new(data)
    if @head == nil
      @head = new_node
    else
      new_node.next_node = @head
      @head = new_node
    end
  end

  def find(index, data)
    current_node = @head
    if data > 1
      sound_list = ""
      data.times do
        current_node = current_node.next_node 
        sound_list += "#{current_node.data}" + " "
      end  
      return sound_list.rstrip
    else
      (index - 1).times do 
        current_node = current_node.next_node 
      end
    end
    current_node.next_node.data
  end

  def insert(new_position_value, data)
    current_node = @head
    index_counter = 0 
      if @head != nil
        place_holder = nil
        index_counter = 1
        insert_node = Node.new(data)
        while index_counter < new_position_value
          current_node = current_node.next_node
          index_counter += 1
        end
        place_holder = current_node.next_node
        current_node.next_node = insert_node  
        insert_node.next_node = place_holder 
      else @head == nil
        @head = Node.new(data)
      end
  end

  def includes?(data)
    current_node = head
    until current_node.next_node == nil
      if data != current_node.data
        return false
      else 
        return true
      end
    end
  end
  
  def count
    current_node = @head
    if current_node.next_node == nil
      counter = 0
    else
      counter = 1
      while current_node.next_node != nil 
        current_node = current_node.next_node
        counter += 1
      end
    end
    counter
  end

  def to_string
    beats = ""
    current_node = head 
    until current_node == nil
      beats += current_node.data + " "
      current_node = current_node.next_node
    end
    beats.rstrip
  end

  def pop
    current_node = head
    node_removed = ""
    node_position = count - 2
    node_position.times do
      current_node = current_node.next_node
    end
    node_removed = current_node.next_node
    current_node.next_node = nil
    node_removed.data
  end
end

