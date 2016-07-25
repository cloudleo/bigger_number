require './solution.rb'

describe "returns the right next bigger number"do
  
  it "returns -1 if its a single digit" do
    next_bigger(9).should == -1
  end

  it "returns -1 if its a negative number" do
    next_bigger(-10).should == -1
  end

  it "two digits" do
    next_bigger(12).should == 21
  end

  it "three digits" do
    next_bigger(513).should == 531
  end
  
  it "four digits" do
    next_bigger(2017).should == 2071
  end

  it "five digits" do 
    next_bigger(10454).should == 10544
  end
  
  it "six digits" do 
    next_bigger(112500).should == 115200
  end
end