class Triangle

  attr_accessor :side1, :side2, :side3, :type

  def initialize(sides)
    sides.each {|key, value| self.send(("#{key}"=), value)}
  end #initialize

end
