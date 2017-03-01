require './lib/prefix_calculator.rb'

calculator = PrefixCalculator.new

filepath = ARGV[0]

calculator.solve_from_file(filepath)