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
    @head.data
  end
  
  def find_tail
    current_node = @head
    if current_node.next_node == false
      current_node
    else
      while current_node.next_node == true 
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