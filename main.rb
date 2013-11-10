# Describe the mail sorting (city, street, house, apartment, destination, value). Write a program that determines:
# the number of parcels sent to some city
# how many parcels with value higher than 10 were sent
# what is the most popular address

require './parcel.rb'
require './post.rb'
require './data.rb'

city = 'Kiev'
answer = Post.number_of_parcels_sent_to city
puts "Number of parcels sent to #{city}: #{answer}"

value = 10
answer = Post.how_many_parcels_were_sent_with_value_higher_than 10
puts "How many parcels were sent with value higher than #{value}: #{answer}"

answer = Post.what_is_the_most_popular_address?
puts "What is most popular address?\n===\n#{answer}\n===\n"
