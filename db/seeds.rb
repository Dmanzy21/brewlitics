User.create!(name:  "Example User",
             email: "example@railstutorial.org"
             activated: true,
             activated_at: Time.zone.now)

99.times do |n|
  name  =     Faker::Name.name
  email = "   example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email
               activated: true,
               activated_at: Time.zone.now)
end