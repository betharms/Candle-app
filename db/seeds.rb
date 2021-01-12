# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Candle.destroy_all

puts 'Creating 50 fake candles...'
50.times do
  candle = Candle.new(
    name: Faker::Cannabis.strain,
    description: Faker::Quote.famous_last_words
  )
  candle.save!
end
puts 'Finished!'

Cart.destroy_all
puts "Total cart count: #{Cart.all.count}"
