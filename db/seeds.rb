require 'ffaker'


Item.delete_all
9.times do
  Item.create(
    name: Faker::Product.brand,
    description: Faker::Lorem.sentence,
    price: 12.99,
    code: Faker::Product.model,
    author_id: 1,
    image_preview: "http://placebear.com/200/200"
  )
end