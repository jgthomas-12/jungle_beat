 require "rspec"
 require "./lib/jungle_beat"
 require "./lib/linked_list"
 require "./lib/node"

RSpec.describe JungleBeat do

  it "exists" do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
  end

  it "has readable attributes" do
    jb = JungleBeat.new

    expect(jb.list.head).to eq(nil)
  end

  it "can append multiple pieces of data" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next_node.data).to eq("doo")
    expect(jb.append("woo hoo shu")).to eq("woo hoo shu")
  end

  it "can count" do
    jb = JungleBeat.new
    jb.append("deep doo ditt")
    jb.append("woo hoo shu")
    
    expect(jb.count).to eq(6)
  end
  
  it "can play all the sounds" do
    jb = JungleBeat.new
    expect(jb.append("deep doo ditt woo hoo shu")).to eq("deep doo ditt woo hoo shu")
    expect(jb.count).to eq(6)
    expect(jb.list.count).to eq(6)
    jb.play
    # plays the sounds deep doo ditt woo hoo shu
  end

  it "has a defined list" do
    jb = JungleBeat.new("deep")
    
    expect(jb.defined_beats?("tee")).to be true
    expect(jb.defined_beats?("dee")).to be true
    expect(jb.defined_beats?("deep")).to be true
    expect(jb.defined_beats?("Dragon")).to be false
  end
  
  it "rejects input not in defined list" do
    jb = JungleBeat.new("deep")

    jb.append("Mississippi")
    expect(jb.all).to eq("deep")
    #all method will return the data of all of the defined the nodes in a string 
    #do i return a rejection for the string that doesn't work?
  end
  
  it "can prepend data" do
    jb = JungleBeat.new("deep")
    
    jb.prepend("tee tee tee Mississippi")
    expect(jb.all).to eq("tee tee tee deep")
    #prepend will prepend all data not in defined list 
  end
  
  it "can adjust the rate" do
    jb = JungleBeat.new("deep dop dop deep")
    
    jb.play
    # => 4 # plays the four sounds normal speed with Boing voice
    expect(jb.rate = 50).to eq(50)
    jb.play
    expect(jb.rate = 300).to eq(300)
    jb.play
    jb.play
    # => 4 # plays the four sounds slower with Boing voice
  end

  it "can control the voice" do
    jb = JungleBeat.new("deep dop dop deep")
    
    expect(jb.voice = "Daniel").to eq("Daniel")
    jb.play
    # => 4 # plays the four sounds slower with Daniel voice
    expect(jb.reset_rate).to eq(500)
    expect(jb.reset_voice).to eq("Boing")
    jb.play
    # => 4 # plays the four sounds normal speed with Boing voice
  end

end

