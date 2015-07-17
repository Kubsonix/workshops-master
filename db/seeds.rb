User.create!(firstname: "Example",
             lastname: "User",
             email: "admin@gmail.com",
             password: "password",
             password_confirmation: "password",
             admin: true)

5.times do |n|
  email = FFaker::Internet.free_email
  firstname = FFaker::NameBR.first_name
  lastname = FFaker::NameBR.last_name
  password = "password"
  User.create!(firstname: firstname,
               lastname: lastname,
               email: email,
               password: password,
               password_confirmation: password)
end

10.times do |i|
  Category.create!(name: FFaker::Vehicle.manufacturer_color)
end

120.times do |a|
    Product.create!(title: FFaker::Movie.title,
                    description: FFaker::Lorem.paragraph,
                    price: rand(1..1000),
                    category_id: rand(1..10),
                    user_id: rand(1..5))
end

800.times do |b|
  Review.create!(content: FFaker::Lorem.paragraph,
                 rating: rand(1..5), product_id: rand(1..120),
                 user_id: rand(1..5))
  end
