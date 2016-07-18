# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
["CodeCore", "Microsoft", "Apple", "Mazda", "Honda", "Toyota","GM"].each do |cat|
  Company.create name: cat
end

50.times do
  Product.create title: Faker::Commerce.product_name,
                 company_id: Faker::Number.between(1,7)
end
