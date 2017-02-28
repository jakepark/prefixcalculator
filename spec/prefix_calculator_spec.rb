require './lib/prefix_calculator.rb'

RSpec.describe PrefixCalculator, "#init" do
  context "Stuff" do
    it "sums two integers" do
      calculator = PrefixCalculator.new
      expect(calculator.solve("filepath", "+ 1 2")).to eq (3)
    end
  end
end


# PC.solve("filepath", "+ 1 2") # 3
# PC.solve("filepath", "* + 2 3 4") # 20 # (2 + 3) * 4 = (5) * 4 = 20
# PC.solve("filepath", "* 1 + 2 3") # 1 * (2 + 3) = 5
# PC.solve("filepath", "+ / a b / c d ") # (a / b) + (c / d)
# PC.solve("filepath", "* + a b + c d") # (a + b) * (c + d)
# PC.solve("filepath", "- * + a b c d") # ((a + b) * c) - d