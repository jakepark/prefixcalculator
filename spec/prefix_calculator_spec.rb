require './lib/prefix_calculator.rb'

RSpec.describe PrefixCalculator, "Unit Tests:" do
  calculator = PrefixCalculator.new
  
  context "Operators:" do
    it "#adds two integers" do    
      expect(calculator.solve("./inputs.rb", "+ 1 2")).to eq (3)
    end
    
    it "#multiplies two integers" do
      expect(calculator.solve("filepath", "* 2 4")).to eq (8)
    end
    
    it "#divides two integers" do
      expect(calculator.solve("filepath", "/ 6 2")).to eq (3)
    end    
    
  end
  
  context "Multiple Inputs:" do
    it "#adds three integers" do
      expect(calculator.solve("filepath", "+ + 1 2 3")).to eq (6)
    end
    
    it "#multiplies three integers" do
      expect(calculator.solve("filepath", "* * 2 3 4")).to eq (24)
    end
    
    it "#multiplies and adds three integers" do
      expect(calculator.solve("filepath", "* + 2 3 4")).to eq (20)
    end
    
    it "#multiplies and adds three integers" do
      expect(calculator.solve("filepath", "* 1 + 2 3")).to eq (5)
    end
    
    it "#adds and divides four integers" do
      expect(calculator.solve("filepath", "+ / 8 2 / 6 2")).to eq (7)
    end
  
    it "#multiplies and adds four integers" do
      expect(calculator.solve("filepath", "* + 1 2 + 3 4")).to eq (21)
    end
  
  end

end


# PC.solve("filepath", "- * + a b c d") # ((a + b) * c) - d