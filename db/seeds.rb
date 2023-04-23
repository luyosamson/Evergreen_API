# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



require 'faker'

puts "Start seeding..."

puts "Seeding flower images..."

flower_image=[
 

    "https://cdn.shopify.com/s/files/1/3103/5874/products/0012053b0d731383383aa3badbd95653_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Blooming-Oriental-Lily-Bouquet-1_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Blooming-Oriental-Lily-Bouquet_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/lilies-and-mums-funeral-wreath-flowers-14207089705023_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/The-Myrtle_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/WhatsAppImage2022-05-05at1.00.53PM_1_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Exclusive-Yellow-Roses-Bouquet_1_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Roses-_-Lindt-Hamper---Bouquet_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Love-is-in-The-Air---Top-Down_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/DSC_1065_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/BDBD_LOL_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4056_LOL_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/ETLP30NV_LAY_preset_proflowers-mx-hero-lv-lay.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/CLM_SCALE_preset_proflowers-mx-hero-lv-new.jpeg",
]


puts "Seeding plants images..."


plant_image=[
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Plant-V3_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Snake-Plant_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Valentines-Orchids---Purple_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/orchid_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/3103/5874/products/Plant-V3_1800x1800.jpg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/BDBD_TOP_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4045FC_LOL_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4247_LOL_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4247_ALT_V2_preset_proflowers-mx-hero-lv-alt.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4004_LOL_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4216FL_LOL_preset_proflowers-mx-hero-lv-new.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4216FL_ALT_V1_preset_proflowers-mx-hero-lv-alt.jpeg",
    "https://cdn.shopify.com/s/files/1/0507/3754/5401/t/1/assets/P4215_SCALE_preset_proflowers-mx-hero-lv-new.jpeg",
    
]

puts "Seeding flower type..."

flower_type=[
    "Romantic Flowers",
    "Thank you Flowers",
    "Celebration Flowers",
    "Birthday Flowers",
    "Sympathy Flowers",
    "I am sorry Flowers",
    "New baby Flowers",
]


puts "Seeding plants type..."

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
    password:"Luyo1980.",
    email:"luyoomondi@gmail.com",
    store_name:"Green Hub Enterprise"
    
)
seller<<seller1

seller2=Seller.create!(
    name:"Victor Omondi",
    username:"Victor_omos",
    password:"Victor1980.",
    email:"omondi23@gmail.com",
    store_name:"Victor Greens Palace"
   
)

seller<<seller2


seller3=Seller.create!(
    name:"Mary Klein",
    username:"Mary2023",
    password:"Mary2023.",
    email:"maryklein@gmail.com",
    store_name:"Green Rosses"
   
)

seller<<seller3


seller4=Seller.create!(
    name:"Bob Collymore",
    username:"Bob2023",
    password:"Bob2023.",
    email:"bobcollymore@gmail.com",
    store_name:"Sunny Stars Enterprise"
   
)

seller<<seller4


seller5=Seller.create!(
    name:"Brian Otieno",
    username:"Brian2023",
    password:"Brian2023.",
    email:"brianotieno@gmail.com",
    store_name:"Fresh Hubs"
   
)

seller<<seller5




puts "Seeding users..."

3.times do
    User.create(
        name: Faker::Name.name,
        username: Faker::Internet.username,
        password: Faker::Internet.password,
        email: Faker::Internet.email,
        
    )

end

 puts "Seeding Flowers.."

seller_ids = Seller.pluck(:id)


20.times do
  Flower.create(
    seller_id: seller_ids.sample,
    name: Faker::Name.name,
    price: rand(1500..3900),
    image: flower_image.sample,
    description: Faker::Markdown.emphasis,
    product_type: flower_type.sample,
    inStock: true
  )
end

puts "Seeding Plants.."

seller_ids = Seller.pluck(:id)


20.times do
  Plant.create(
    seller_id: seller_ids.sample,
    name: Faker::Name.name,
    price: rand(1100..3300),
    image: plant_image.sample,
    description: Faker::Markdown.emphasis,
    product_type: plant_type.sample,
    inStock: true
  )
end

puts "Seeding  user profile"

#  3.times do

# user = User.order("RANDOM()").limit(1).first

# Profile.create!(
#      user_id: user.id,
#      name: user.name,
#      email: user.email,
#      username: user.username,
     
# )
# end


    User.all.each do |user|
        Profile.create!(
            user_id: user.id,
            name: user.name,
            email: user.email,
            username: user.username,
        
        )
    end



puts "Seeding seller profile"

#  5.times do
  
# seller = Seller.order("RANDOM()").limit(1).first

# Sellerprofile.create!(
#     seller_id: seller.id,
#     name: seller.name,
#     email: seller.email,
#     username: seller.username,
#     store_name: seller.store_name


# )

# end

Seller.all.each do |seller|
  Sellerprofile.create!(
    seller_id: seller.id,
    name: seller.name,
    email: seller.email,
    username: seller.username,
    store_name: seller.store_name
  )
end








puts "Seeding completed!"
