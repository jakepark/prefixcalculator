class PrefixCalculator
  def solve(filepath, input)
    stack = []
    operators = []
    
    result = 0
    
    input = input.split(" ")
    
    input.each do |cha|
      if cha =~ /^\d+$/
        stack.push(cha.to_i)
      elsif cha =~ /^[a-zA-Z]$/
      else
        operators.push(cha)
      end
      
      if stack.length >= 2
        b, a = stack.pop, stack.pop  # order matters
        op = operators.pop
        result = calculate(a, b, op)
        stack.push(result)
      end
        
    end
    
    # puts "Result: " + result.to_s
    
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
