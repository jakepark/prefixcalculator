require './lib/prefix_calculator.rb'

RSpec.describe PrefixCalculator, "Unit Tests:" do
  calculator = PrefixCalculator.new
  
  context "Operators:" do
    it "#adds two integers" do    
      expect(calculator.solve("+ 1 2")).to eq (3)
    end
    
    it "#multiplies two integers" do
      expect(calculator.solve("* 2 4")).to eq (8)
    end
    
    it "#divides two integers" do
      expect(calculator.solve("/ 6 2")).to eq (3)
    end    
    
  end
  
  context "Multiple Inputs:" do
    it "#adds three integers" do
      expect(calculator.solve("+ + 1 2 3")).to eq (6)
    end
    
    it "#multiplies three integers" do
      expect(calculator.solve("* * 2 3 4")).to eq (24)
    end
    
    it "#multiplies and adds three integers" do
      expect(calculator.solve("* + 2 3 4")).to eq (20)
    end
    
    it "#multiplies and adds three integers" do
      expect(calculator.solve("* 1 + 2 3")).to eq (5)
    end
    
    it "#adds and divides four integers" do
      expect(calculator.solve("+ / 8 2 / 6 2")).to eq (7)
    end
  
    it "#multiplies and adds four integers" do
      expect(calculator.solve("* + 1 2 + 3 4")).to eq (21)
    end
  
  end

  context "Solve Lines from File:" do
    it "#should puts one solution" do    
      expect{ calculator.solve_from_file("./examples/input_1.rb") }
        .to output("3\n").to_stdout
    end
    
    it "#should puts multiple solutions" do    
      expect{ calculator.solve_from_file("./examples/input_all.rb") }
        .to output("3\n8\n3\n6\n24\n20\n5\n7\n21\n").to_stdout
    end
  end
  
end