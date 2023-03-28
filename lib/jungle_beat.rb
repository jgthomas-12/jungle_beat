class JungleBeat
  attr_accessor :data
  attr_reader :list
  def initialize(data = " ")
    @list = LinkedList.new #by calling this a new list is established with the attributes of the list
    @data = append(data) #this works because I make a new node in the append method below
  end

  def all
    list.to_string #to_string already lists the output in a string 
  end

  def append(data)
    datum = data.split(" ")
    datum.each do |data1|
      list.append(data1) if defined_beats?(data1)
    end
    data
  end
  
  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 175 -v Daniel #{beats}`
  end

  def defined_beats?(data)
    defined_beats = ["tee", "dee", "deep", "bop", "boop", "la", "na", "deep", "doo", "ditt", "woo", "hoo", "shu"]
    defined_beats.include?(data)
  end
end

# beats = ""
