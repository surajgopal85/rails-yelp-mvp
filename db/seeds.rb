puts 'Cleaning database...'
Restaurant.destroy_all

100.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "created Restaurant ID #{restaurant.id}"
end

puts "Done!"
