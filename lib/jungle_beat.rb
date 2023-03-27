class JungleBeat

  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def append(data)
    datum = data.split(" ")
    datum.each do |data|
      list.append(data) 
    end
    data
  end
  
  def count
    list.count
  end

  def play
    beats = list.to_string
    `say -r 100 -v Boing #{beats}`
  end

end