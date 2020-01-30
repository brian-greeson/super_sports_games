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

  def standard_deviation_age
    mean = self.average_age

    ages_minus_mean = []
    ages.each {|age| ages_minus_mean << age - mean }

    ages_minus_mean_squared = []
    ages_minus_mean.each {|age_minus_mean| ages_minus_mean_squared << age_minus_mean * age_minus_mean}

    squares_divided_by_length = ages_minus_mean_squared.sum / @ages.length


    standard_devation = Math.sqrt(squares_divided_by_length)
    standard_devation.round(2)

  end

end
