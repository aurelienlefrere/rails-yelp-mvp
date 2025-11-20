10.times do
 restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone_with_country_code,
    category: Restaurant::CATEGORY.sample
  )
    5.times do
      Review.create!(
        content: Faker::Restaurant.review,
        rating: rand(0..5),
        restaurant: restaurant
      )
    end
end
