User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             admin:  true)

99.times do |n|
  name  =     Faker::Name.name
  email = "   example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email
end