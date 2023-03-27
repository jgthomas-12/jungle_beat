class LinkedList
  attr_reader :head, :new_node
  def initialize
    @head = nil
  end
  
  # def append(data)
  #   if @head == nil
  #     @head = Node.new(data)
  #   else
  #     find_tail.next_node = Node.new(data)
  #   end
  # end
  
  # def find_tail
  #   current_node = head
  #   if current_node.next_node == nil
  #     current_node
  #   else
  #     while !current_node.next_node.nil? 
  #       current_node = current_node.next_node
  #     end
  #     current_node
  #   end
  # end

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

  # def insert(index, data)
  #   current_node = @head
  #   (index - 1).times do #finds the position just before index
  #     current_node = current_node.next_node #current node next_node lines up for insertion
  #   end
  #   insert_node = Node.new(data)
  #   insert_node.next_node = current_node.next_node #attaches
  #   current_node.next_node = insert_node
  # end

  # this method passes but...
  # if it passes index 0 what happens...index -1.times would break it?
  # this also can't insert a head into the list if nothing exists 

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
    current_node = @head
    until current_node.data == data
      false
    end
  end
  #include has to traverse the line 
  #it has to assess the input vs the current_node.data
  
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
      

end


#check next node is nil
#while or until loop
#@until something is true or while something is true, continue until false

#build in some kind of identifier...unless we can use the data values as ids?
#each node is a package of information 
#each package needs to be able to locate itself based on itslef and the one after 
#find enumerable...? probably not because it is based on and makes an array
#see/search for the data
#count how many times have done that

#google finding or setting a tail in a linked list ruby
#find_tail method...anytime call method it will recalculate the list 