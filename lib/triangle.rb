class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  
  def initialize(n1, n2, n3)
    @n1 = n1
    @n2 = n2 
    @n3 = n3
  end
  
  
  def kind()
    if (@n1 <= 0) || (@n2 <= 0) ||(@n3 <= 0)
      raise TriangleError
    elsif (@n1 + @n2 <= @n3) || (@n2 + @n3 <= @n1) || (@n1 + @n3 <= @n2)
      raise TriangleError
    else 
      if (@n1 == @n2) && (@n2 == @n3)
        :equilateral
      elsif (@n1 == @n2) || (@n3 == @n2) || (@n3 == @n1) 
        :isosceles
      elsif (@n1 != @n2) & (@n2 != @n3) & (@n1 != @n3) 
        :scalene
      end
    end
  end 
  
  class TriangleError < StandardError
    "Dummy wrong number"
  end

end


