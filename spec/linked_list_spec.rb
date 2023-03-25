require "rspec"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it "has a head attribute" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "appends" do
    list = LinkedList.new

    expect(list.head).to be(nil)
    list.append("doop")
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)

    list.append("deep")
    # require 'pry'; binding.pry
    expect(list.head.next_node.data).to eq("deep")

  end

  it "counts" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    expect(list.count).to eq(2)
  end

  it "can become a string" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end

  it "can prepend" do
    list = LinkedList.new
    list.append("plop")
    
    expect(list.head.data).to eq("plop")
    expect(list.head.next_node).to eq(nil)
    expect(list.to_string).to eq("plop")
    
    list.append("suu")

    expect(list.head.next_node.data).to eq("suu")
    
    list.prepend("dop")
    
    expect(list.head.data).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq(3)
  end 

  xit "can insert" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")

    expect(list.head.data).to eq("plop")
    expect(list.head.next_node).to eq(nil)
    expect(list.to_string).to eq("plop")
    expect(list.head.next_node.data).to eq("suu")
    
    list.insert(1, "woo")
    expect(list.head.next_node.data).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
    
  end
end




# describe "method" do
#   it "if" do

#   end

#   it "elsif" do

#   end
# end