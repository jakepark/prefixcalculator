require './lib/prefix_calculator.rb'

RSpec.describe PrefixCalculator, "#init" do
  context "Stuff" do
    it "sums two integers" do
      calculator = PrefixCalculator.new
      expect(calculator.solve("filepath", "+ 1 2")).to eq 3
    end
  end
end