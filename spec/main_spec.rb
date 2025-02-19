describe "String Calculator" do
  before(:each) do
    @calc = String_Calculator.new
  end
  context "string_calculator class" do


    it "implements a method add()" do
      expect(@calc).to respond_to(:add)
    end

    it "accepts an string input and return numeric output" do
      expect(@calc.add('')).to eq(0)
    end 
  end 

  context "add()" do 
    it "returns the numeric equivalent for a single number string" do 
      expect(@calc.add('5')).to eq(5)
    end
  end
end