# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Message.delete_all

10.times do 
    Message.create(name: Faker::Books::Dune.unique.character, email: Faker::Internet.unique.email , comment: Faker::Books::Dune.unique.quote)
end