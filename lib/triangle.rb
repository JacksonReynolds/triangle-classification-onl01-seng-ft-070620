class Triangle

  attr_accessor :side1, :side2, :side3, :type

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end #initialize

  def kind

  end #kind

  class TriangleError < StandardError
    def message
      "The triangle is invalid, try again!"
    end #message
  end #TriangleError

end #Triangle
