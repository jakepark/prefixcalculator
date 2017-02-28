class PrefixCalculator
  def solve(filepath, input)
    stack = []
    operands = []
    
    result = 0
    
    input = input.split(" ")
    
    input.each do |cha|
      if cha =~ /^\d+$/
        stack.push(cha.to_i)
      elsif cha =~ /^[a-zA-Z]$/
      else
        operands.push(cha)
      end
    end
      
    print stack
    puts
    print operands
    puts
  end

  def calculate(a, b, operator)
    case operator
    when "+"
      return (a + b)
    # when "-"
    #   return (a - b)
    when "*"
      return (a * b)
    when "/"
      return (a / b)
    end 
  end

end

PC = PrefixCalculator.new

PC.solve("filepath", "+ 1 2") # 3
PC.solve("filepath", "* + 2 3 4") # 20 # (2 + 3) * 4 = (5) * 4 = 20
PC.solve("filepath", "* 1 + 2 3") # 1 * (2 + 3) = 5
PC.solve("filepath", "+ / a b / c d ") # (a / b) + (c / d)
PC.solve("filepath", "* + a b + c d") # (a + b) * (c + d)
PC.solve("filepath", "- * + a b c d") # ((a + b) * c) - d