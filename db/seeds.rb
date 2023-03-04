# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Here are some test seeds for you!

puts 'Cleaning Database! 🧹'
puts 'Database is clean! 🧼'
puts 'Creating Restaurants... 👩‍🍳👩‍🍳👩‍🍳👩‍🍳👩‍🍳👩‍🍳'

# First we delete everything in our DB
Restaurant.delete_all

# And then we create a few restaurants
Restaurant.create(
  name: 'La Pecora Nera',
  address: 'Berlin',
  rating: 5
)

Restaurant.create(
  name: 'La Squala',
  address: 'Casablanca',
  rating: 5
)

Restaurant.create(
  name: 'Cafe Pilz',
  address: 'Berlin',
  rating: 5
)

puts 'Amazing! We are done 🍕'
