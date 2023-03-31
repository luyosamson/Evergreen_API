# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

flower_image=[
    "https://cdn.shopify.com/s/files/1/3103/5874/products/The-Serena_1_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Savage-Love-Rose-Package-2_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/9d1af0d62773d331392fc0b9021ac9c1_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/e83fcbd20ad24c7514378868bafb07fe_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/DSC_1079_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/3af8b32873675c27e6745d44aedb7b2d_1800x1800.jpg",
    "https://plantskenya.com/122-large_default/african-daisy.jpg",
    "https://plantskenya.com/275-large_default/aloes.jpg",
]

flower_type=[
    "Romantic Flowers",
    "Thank you Flowers",
    "Celebration Flowers",
    "Birthday Flowers",
    "Sympathy Flowers",
    "I am sorry Flowers",
    "New baby Flowers",
]

plant_type=[
    "Succulent Plants",
    "Tropical Plants",
    "Floor Plants",
    "Outdoor Plants",
    "Indoor Plants",
    "Bonsai",
    "Flowering Plants",
    "House Plants",
    "Hanging Plants"
]

 

require 'faker'

20.times do
    Flower.create(
        Faker::Name.name,
        price: rand(1500..3900),
        image:flower_image.sample,
        Faker::Markdown.description,
        type.flower_type.sample

    )

end

25.times do
    Plant.create(

        Faker::Name.name,
        price: rand(1100..3500),
        image:plant_image.sample,
        Faker::Markdown.description,
        type.flower_type.sample

    )
end