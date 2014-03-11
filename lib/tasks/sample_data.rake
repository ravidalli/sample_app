namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin =  User.create!(name: "Example User",
      email: "r@b.com",
      password: "121212",
      password_confirmation: "121212")
      admin.toggle!(:admin)
   99.times do |n|
     name = Faker::Name.name
     email = "test#{n+1}@dalli.org"
     password = "password"
     User.create!(name: name,
     email: email,
     password: password,
     password_confirmation: password)
   end
  end
end