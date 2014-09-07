Item.delete_all
9.times do
  Item.create(
    {
    name: Faker::Commerce.product_name,
    description: Faker::Lorem.sentence,
    price: Faker::Commerce.price,
    code: Faker::Address.postcode,
    author_id: Faker::Number.number(2),
    image_preview: "http://placebear.com/200/200"
    }
  )
end