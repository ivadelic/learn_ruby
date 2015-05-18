class Array

  def self.sum
  end

  def sum
    sum = 0
    self.each do |x|
      sum += x
    end
    sum
  end

  def square
    self.map do |y|
      y**2
    end
  end

  def square!
    self.map! do |z|
      z**2
    end
  end

end