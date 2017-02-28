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
