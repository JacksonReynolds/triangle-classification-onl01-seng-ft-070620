class Triangle

  attr_accessor :side1, :side2, :side3, :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end #initialize

  def kind
    if side1 < 0 || side2 < 0 || side3 < 0 || side1 + side2 < side3 ||
       side2 + side3 < side1 || side1 + side3 < side2
       begin
         raise TriangleError
       rescue TriangleError => error
         puts error.essage
       end #error
     elsif side1 == side2, side2 == side3
       :equilateral
     elsif side1 == side2 || side2 == side3 || side1 == side3
       :isosceles
     else
       :scalene
     end #if
  end #kind

  class TriangleError < StandardError
    def message
      "The triangle is invalid, try again!"
    end #message
  end #TriangleError

end #Triangle
