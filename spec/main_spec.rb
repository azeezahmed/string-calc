describe "String Calculator" do

  context "string_calculator class" do

    before(:each) do
      @calc = String_Calculator.new
    end
     
      it "implements a method add()" do
        expect(@calc).to respond_to(:add)
      end

      it "accepts an string input and return numeric output" do
        expect(@calc.add('')).to eq(0)
      end
     
  end 
end