User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)
             
User.create!(name:  "Minami Tsuda",
             email: "minami-tsuda@aoni.co.jp",
             password:              "daaaaa",
             password_confirmation: "daaaaa")
             
User.create!(name:  "Ruriko Aoki",
             email: "coloruri@atomicmonkey.co.jp",
             password:              "ihavecontroller",
             password_confirmation: "ihavecontroller")

User.create!(name:  "Natsumi Takamori",
             email: "natsumi-takamori@pro-fit.com",
             password:              "pitinradio",
             password_confirmation: "pitinradio")

96.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end