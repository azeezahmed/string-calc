describe "String Calculator" do

  context "string_calculator class" do 
     
     it "implements a method add()" do 
        calc = String_Calculator.new
        expect(calc).to respond_to(:add)
     end
     
  end 
end