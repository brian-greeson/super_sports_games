ages = [24, 30, 18, 20, 41]

sum = 0.0
ages.each {|age| sum += age}
print "step 1 #{sum}\n"

ages_length = 0.0
ages.each {|age| ages_length += 1} #I'm assuming we are not supposed to use .length
print "step 2 #{ages_length}\n"


mean = sum / ages_length
print "step 3 #{mean}\n"

ages_minus_mean = []
ages.each {|age| ages_minus_mean << age - mean }
print "step 4 #{ages_minus_mean}\n"

ages_minus_mean_squared = []
ages_minus_mean.each {|age_minus_mean| ages_minus_mean_squared << age_minus_mean * age_minus_mean}
print "step 5 #{ages_minus_mean_squared}\n"


sum_of_squares = 0.0
ages_minus_mean_squared.each {|age| sum_of_squares += age}
print "step 6 #{sum_of_squares}\n"

squares_divided_by_length = sum_of_squares / ages_length
print "step 7 #{squares_divided_by_length}\n"

standard_devation = Math.sqrt(squares_divided_by_length)

puts standard_devation




# Your code here for calculating the standard deviation

# When you find the standard deviation, print it out
