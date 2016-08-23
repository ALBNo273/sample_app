User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
             
User.create!(name:  "Minami Tsuda",
             email: "minami-tsuda@aoni.co.jp",
             password:              "daaaaa",
             password_confirmation: "daaaaa",
             activated: true,
            activated_at: Time.zone.now)
             
User.create!(name:  "Ruriko Aoki",
             email: "coloruri@atomicmonkey.co.jp",
             password:              "ihavecontroller",
             password_confirmation: "ihavecontroller",
             activated: true,
             activated_at: Time.zone.now)

User.create!(name:  "Natsumi Takamori",
             email: "natsumi-takamori@pro-fit.com",
             password:              "pitinradio",
             password_confirmation: "pitinradio",
             activated: true,
             activated_at: Time.zone.now)

96.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               activated: true,
               activated_at: Time.zone.now)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end