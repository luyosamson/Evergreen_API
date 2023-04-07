# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



require 'faker'

puts "Start seeding..."

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


puts "Seeding sellers..."

seller=[]

seller1=Seller.create!(
    name:"Samson Omondi",
    username:"Luyosamson",
    password:"Luyo1980",
    email:"luyosamson@gmail.com",
    store_name:"Green Life"
)
seller<<seller1

seller2=Seller.create!(
    name:"Victor Omondi",
    username:"Victor_omos",
    password:"Victor1980",
    email:"Victor@gmail.com.com",
    store_name:"Red Carpet Flowers"
)

seller<<seller2

seller3=Seller.create!(
    name:"Mary Jane",
    username:"Mary_J",
    password:"Mary001",
    email:"mary@gmail.com",
    store_name:"Blue Moon Enterprise"
)

seller<<seller3

seller4=Seller.create!(
    name:"Luyo Omondi",
    username:"Luyo001",
    password:"Luyo123",
    email:"luyo@gmail.com",
    store_name:"Millenium Greens"
)

seller<<seller4

20.times do
    Seller.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        password: Faker::Internet.password,
        email: Faker::Internet.email,
        store_name: Faker::Company.name 
            

    )

end

puts "Seeding users..."

20.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        password: Faker::Internet.password,
        email: Faker::Internet.email,
        
    )

end

 puts "Seeding Flowers.."

20.times do
    Flower.create(
        seller_id: Seller.all.sample.id,
        name: Faker::Name.name,
        price: rand(1500..3900),
        image: flower_image.sample,
        description: Faker::Markdown.emphasis,
        flower_type: flower_type.sample,
        inStock: true

    )

end

puts "Seeding Plants.."

25.times do
    Plant.create(
        seller_id: Seller.all.sample.id,
        name: Faker::Name.name
        price: rand(1100..3500),
        image: flower_image.sample,
        description: Faker::Markdown.emphasis,
        plant_type: plant_type.sample,
        inStock: true

    )
end

puts "Seeding into user profile"

user=User.all.sample

Profile.create!(
     user_id: user.all.id,
     name: user.all.name,
     email: user.all.email,
     username: user.all.username,
     
)


puts "Seeding seller profile"

seller=Seller.all.sample

Sellerprofile.create!(
    seller_id: seller.all.id,
    name: seller.all.name,
    email: seller.all.email,
    username: seller.all.username,
    store_name: seller.all.store_name


)






#Seeding Order








puts "Seeding completed!"
