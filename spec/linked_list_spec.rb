require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do

    list = LinkedList.new
    expect(list).to be_an_instance_of(LinkedList)
    
  end

  it "appends" do
    list = LinkedList.new
    # expect(list).to be_an_instance_of(LinkedList)
    
    expect(list.head).to be(nil)
    #   #=> nil
    expect(list.append("doop")).to eq("doop")
    #   #=> "doop"
  end

    # expect(list).to eq()
    #   #=> <LinkedList head=<Node data="doop" next_node=nil #5678904567890> #45678904567>
    # list.head.next_node
    #   #=> nil
    # list.count
    #   #=> 1
    # list.to_string
    #   #=> "doop"
end