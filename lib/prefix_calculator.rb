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
      
      if stack.length == 2
        b, a = stack.pop, stack.pop  # order matters
        op = operands.pop
        result = calculate(a, b, op)
      end
        
    end
    
    return result
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
