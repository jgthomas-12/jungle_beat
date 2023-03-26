class LinkedList
  attr_reader :head, :new_node
  def initialize
    @head = nil
  end
  
  # def append(data)
  #   # new_node = Node.new(data)
  #   require 'pry'; binding.pry
  #   if @head # == nil 
  #     # @head = Node.new(data)
  #     # if the head is occupied use find_tail to access the next_node attribute and establish a new node instance 
  #     find_tail = Node.new(data)
  #   else
  #     #make sure we're at the end of the list find_tail
  #     #if the head is not occupied make a new node instance
  #     @head = Node.new(data)
  #       # while @head.next_node == nil
  #       #   @head.find_tail
  #   end

  #   @head.data
  # end
  
  def append(data)
    if @head == nil
      @head = Node.new(data)
    else
      find_tail.next_node = Node.new(data)
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

  def insert(index, data)
    current_node = @head
    (index - 1).times do #finds the position just before index
      current_node = current_node.next_node #current node next_node lines up for insertion
    end
    insert_node = Node.new(data)
    insert_node.next_node = current_node.next_node #attaches
    current_node.next_node = insert_node
  end
  

  # def insert(new_position_value, data)
  #   # current_node = @head
  #   index_counter = 0 
  #     if @head != nil
  #       place_holder = nil
  #       index_counter = 1
  #       insert_node = Node.new(data)
  #       while index_counter < new_position_value
  #         current_node = current_node.next_node
  #         index_counter += 1
  #         if index_counter == new_position_value
  #           place_holder = insert_node.next_node #this should make a space in insert_node.next_node
  #           insert_node.next_node = insert_node   #this should actually insert the insert_node
  #           insert_node.next_node = place_holder #this should refer to the new insert_node's next_node and add the held value with other values attached to it     
  #         end
  #         break
  #       end 
  #     else @head == nil
  #       @head = Node.new(data)
  #     end
  #   # need to make a new node to be inserted 
  #   # if empty, make it the head. 
  #   # if you're trying to insert more than is there, throw error
  #   # example: insert in index 4 but there are only 2 linked list items = "error, list not long enough"
  #   # The inserted node should become the next_node of the node prior and will have the node after become the next_node of current_node
  # end

  # def insert(new_position_value, data)
  #   # current_node = Node.new(data)
  #   # placeholder = nil
  #   index_counter = 0 
  #   if head != nil
  #     place_holder = nil
  #     index_counter = 1
  #     insert_node = Node.new(data)
  #     while index_counter < new_position_value
  #       insert_node = insert_node.next_node
  #       index_counter += 1
  #       # proceed to next node
  #       if index_counter == new_position_value
  #         place_holder = insert_node.next_node #this should make a space in insert_node.next_node
  #         insert_node.next_node = insert_node   #this should actually insert the insert_node
  #         insert_node.next_node = place_holder #this should refer to the new insert_node's next_node and add the held value with other values attached to it     
  #       end
  #       break
  #     end
  #   else #@head == nil
  #     # require 'pry'; binding.pry
  #     @head = Node.new(data)
  #     # place_holder = nil
  #   end
  #   # need to make a new node to be inserted 
  #   # if empty, make it the head. 
  #   # if you're trying to insert more than is there, throw error
  #   # example: insert in index 4 but there are only 2 linked list items = "error, list not long enough"
  #   # The inserted node should become the next_node of the node prior and will have the node after become the next_node of current_node
  # end
  
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
  
  # def to_string
  #   if count <= 1
  #       @head.data
  #     else
  #       @head.data + " " + find_tail.next_node.data
  #       require 'pry'; binding.pry
  #     end
  #     # Need to loop this action -> + " " + find_tail.next_node.data
  #   # @head.data
  # end
  
  def to_string
    beats = []
    current_node = head 
 
    until current_node == nil
      beats << current_node.data 
      current_node = current_node.next_node
    end
    beats.join(" ")
  end
      

  def find_tail
    current_node = head
    if current_node.next_node == nil
      current_node
    else
      while !current_node.next_node.nil? 
        current_node = current_node.next_node
      end
      current_node
    end
    #   while node = node.next_node
    #     if node.next_node == false
    #       node
    #     end
    #   end
    # return node if !node.next_node
    # return node if !node.next_node
    #   while (node = node.next)
    # end
    # #node variable is assigned the @head attribute
    # #push to end of list while next_node is full
    # while @head.next_node != nil
    #   #go to next node
    #   if @head.next_node == nil
    #   end
    # end
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