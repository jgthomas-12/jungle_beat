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
  
    expect(list.head).to be(nil)
    expect(list.append("doop")).to eq("doop")
  end

  it "has accessible data" do
    list = LinkedList.new

    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it "counts" do
    list = LinkedList.new
    list.append("doop")
    expect(list.count).to eq(1)
    #   #=> 1
  end

  it "can become a string" do
    list = LinkedList.new
    # require 'pry'; binding.pry
    expect(list.to_string).to eq("doop")
    #   #=> "doop"
  end
end