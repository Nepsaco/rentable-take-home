# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

100.times do
  property = Property.create(address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state)
  rand(5..30).times do
    Unit.create(property_id: property.id, bedroom_count: rand(1..5), bathroom_count: rand(1..5), square_footage: rand(600..3000), rent_price: rand(800.00..5000.00))
  end
end
