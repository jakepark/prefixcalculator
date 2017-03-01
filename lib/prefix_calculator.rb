class PrefixCalculator
  def solve_from_file(filepath)
    input_array = []
    
    file = File.open(filepath).readlines.each do |line|
      input_array.push(line)
    end
    puts input_array
    
  end
  
  def solve(input)
    stack = []
    
    input = input.reverse.split(" ")
    
    input.each do |cha|        
      if cha =~ /^\d+$/              # operand
        stack.push(cha.to_i)
      elsif cha =~ /^[a-zA-Z]$/      # ignore letters
      else                           # operator
        a, b = stack.pop, stack.pop 
        op = cha
        result = calculate(a, b, op)
        stack.push(result)
      end  
    end
    
    # puts "Result: " + result.to_s
    
    return stack.pop
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
