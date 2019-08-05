class Triangle
  attr_accessor :side_a , :side_b , :side_c , :triangle 
  
  def initialze(side_a,side_b, side_c)
    @side_a = side_a 
    @side_b = side_b
    @side_c = side_c 
    @@triangle = side_a + side_b + side_c 
  end 
  
  def kind 
    if @@triangle / 3 == @side_a 
      Trangle = equilateral 
    end 
  end 
end
