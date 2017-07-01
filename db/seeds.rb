# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

team1 = Team.create!( { name: "FC Utrecht", image_url: "https://..." } )
team2 = Team.create!( { name: "Barcelona",  image_url: "https://..." } )
team3 = Team.create!( { name: "Chelsea",  image_url: "https://..." } )

player1 = Player.create!( { name: "Mobo", age: 25, image_url: "https://..." } )
player2 = Player.create!( { name: "Jerry", age: 30, image_url: "https://..." } )
player3 = Player.create!( { name: "Bennie", age: 45, image_url: "https://..." } )
