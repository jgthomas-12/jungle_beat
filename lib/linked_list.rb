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
      sound_list = []
      data.times do
        current_node = current_node.next_node #current node next_node lines up for insertion
        sound_list << current_node.data
      end  
      return sound_list.join(" ")
    else
      (index - 1).times do #finds the position just before index
        current_node = current_node.next_node #current node next_node lines up for insertion
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
        place_holder = current_node.next_node #this should make a space in insert_node.next_node
        current_node.next_node = insert_node   #this should actually insert the insert_node
        insert_node.next_node = place_holder #this should refer to the new insert_node's next_node and add the held value with other values attached to it    
      else @head == nil
        @head = Node.new(data)
      end
    # need to make a new node to be inserted 
    # if empty, make it the head. 
    # if you're trying to insert more than is there, throw error
    # example: insert in index 4 but there are only 2 linked list items = "error, list not long enough"
    # The inserted node should become the next_node of the node prior and will have the node after become the next_node of current_node
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
    beats = []
    current_node = head 
 
    until current_node == nil
      beats << current_node.data 
      current_node = current_node.next_node
    end
    beats.join(" ")
  end

  def pop
    current_node = head
    node_removed = []
    node_position = count - 2
    node_position.times do
      current_node = current_node.next_node
    end
    node_removed << current_node.next_node
    current_node.next_node = nil
    node_removed[0].data
    # Do i actually need to remove the node_removed array?
  end
end

