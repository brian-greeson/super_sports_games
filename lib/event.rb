class Event
  attr_reader :name, :ages

  def initialize(name = "", ages = [])
    @name = name
    @ages = ages

  end

  def max_age
    @ages.max.to_i
  end

  def min_age
    @ages.min.to_i
  end

  def average_age
    (@ages.sum.to_f / @ages.length).round(2)
  end

end
