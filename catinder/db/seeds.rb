# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = Cat.create([
    { name: "Korben Dallas", image_uri: "cat-cool.jpg", votes: 0 },
    { name: "Stitch", image_uri: "cat-curious.jpg", votes: 0 },
    { name: "Twix", image_uri: "cat-cute.jpg", votes: 0 },
    { name: "Buster", image_uri: "cat-handsome.jpg", votes: 0 },
    { name: "Garfield", image_uri: "cat-hate.jpg", votes: 0 },
    { name: "Kingsley", image_uri: "cat-love.jpg", votes: 0 },
])