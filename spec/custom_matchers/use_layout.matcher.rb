module CustomMatchers
  class UseLayout
     def initialize(expected)
       if expected.is_a? String
         @expected = 'layouts/' + expected
       else
         @expected = expected
       end 
     end
     def matches?(controller)
       @actual = controller.layout
       #@actual.equal?(@expected)
       @actual == @expected
     end
     def failure_message
       return "use_layout expected #{@expected.inspect}, got #{@actual.inspect}", @expected, @actual
     end
     def negeative_failure_message
       return "use_layout expected #{@expected.inspect} not to equal #{@actual.inspect}", @expected, @actual
     end
  end
end

def use_layout(expected)
  CustomMatchers::UseLayout.new(expected)
end
