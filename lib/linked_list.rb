class LinkedList
  attr_reader :head, :new_node
  def initialize
    @head = nil
  end

  def append(data)
    # new_node = Node.new(data)
    if @head == nil 
      @head = Node.new(data)
    else
      #make sure we're at the end of the list find_tail
      while @head.next_node = nil
        # @head.find_tail
      end
    end
    @head.data
  end
  
  def count
    counter = 0
    while @head != nil
      counter += 1
      if @head == nil
        counter = 0
      end
      break
    end
    counter
  end
  
  def to_string
    @head.data
  end
  
  def find_tail
    #push to end of list while next_node is full
    while @head.next_node != nil
      #go to next node
      if @head.next_node == nil
        @head.next_node = Node.new(data)
      end
    end
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