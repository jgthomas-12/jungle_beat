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
    # require 'pry'; binding.pry
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

  it "can list a string" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end

  it "can list single or multiple strings" do
    list = LinkedList.new
    list.append("plop")
    
    expect(list.head.data).to eq("plop")
    expect(list.head.next_node).to eq(nil)
    expect(list.to_string).to eq("plop")
    
    list.append("suu")

    expect(list.head.next_node.data).to eq("suu")
    expect(list.to_string).to eq("plop suu")
  end

  it "can prepend" do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    
    expect(list.to_string).to eq("dop plop suu")
    expect(list.head.data).to eq("dop")
    expect(list.count).to eq(3)
  end 

  it "can insert" do
    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")

    # expect(list.head.data).to eq("plop")
    # expect(list.head.next_node).to eq(nil)
    # expect(list.to_string).to eq("plop")
    # expect(list.head.next_node.data).to eq("suu")
    
    list.insert(1, "woo")
    # expect(list.head.next_node.data).to eq("woo")
    expect(list.to_string).to eq("dop woo plop suu")
    
  end

  it "can find data" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    
    expect(list.to_string).to eq ("deep woo shi shu blop")
    expect(list.find(2, 1)).to eq ("shi")
    expect(list.find(1, 3)).to eq("woo shi shu")
  end

  it "has includes? method" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    expect(list.includes?("deep")).to be true
    # => true
    expect(list.includes?("dep")).to be false
    # => false
  end

  xit "has a pop method" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    
    
    expect(list.pop).to be ("blop")
    # => "blop"
    expect(list.pop).to be ("shu")
    # => "shu"
    expect(list.to_string).to be ("deep woo shi")
    # => "deep woo shi" 
  end
  
end

