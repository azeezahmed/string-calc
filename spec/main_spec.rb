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

    it "returns the sum of 2 numbers that are comma separated" do
      expect(@calc.add('2,3')).to eq(5)
      expect(@calc.add('10,3')).to eq(13)
      expect(@calc.add('1,3')).to eq(4)
    end

    it "returns the sum of N numbers that are comma separated" do
      expect(@calc.add('2,3')).to eq(5)
      expect(@calc.add('10,4,5,3')).to eq(22)
      expect(@calc.add('1,3,1,2,5,1,5,7,12,55,12')).to eq(104)
    end

    it "supports new line '\n' as a delimiter" do 
      expect(@calc.add('1\n2, 3')).to eq(6)
      expect(@calc.add('1\n2, 3, 4\n7\n5')).to eq(22)
    end

    # after // and before a new line
    it "supports different delimiters represented at the beginning of string" do
      expect(@calc.add('//;\n1;2')).to eq(3)
      expect(@calc.add('//;\n1;2;5')).to eq(8)
      expect(@calc.add('//,\n1,1,5')).to eq(7)
      expect(@calc.add('//K\n15K2K5')).to eq(22)
    end

    it "supports ',' as a dynamic delimiter represented at the beginning of string" do
      expect(@calc.add('//,\n1,2')).to eq(3)
    end

    it "supports '\/n' as a dynamic delimiter represented at the beginning of string" do
      expect(@calc.add('//\n\n1\n2')).to eq(3)
    end
  end
end