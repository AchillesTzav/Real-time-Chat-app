# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(username: "Mike", email: "mike@gamil.com", password: "pass")
User.create(username: "Katlyd", email: "kat@gmail.com", password: "ssap")
User.create(username: "Tass", email: "tass@gmail.com", password: "ssat")
User.create(username: "Cookie", email: "jrt@gmail.com", password: "woof")

Message.create(body: "Hi, i am MIke!", user_id: 2)
Message.create(body: "Hello my name is Kat!", user_id: 3)
Message.create(body: "Good day i am Tass", user_id: 4)
Message.create(body: "Woof woof, Cookie woof!!", user_id: 5)
