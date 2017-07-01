# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.delete_all
Team.delete_all

#teams
team1 = Team.create!( { name: "FC Utrecht", image_url: "https://..."  } )
team2 = Team.create!( { name: "Barcelona",  image_url: "https://..." } )
team3 = Team.create!( { name: "Chelsea",  image_url: "https://..." } )

teams_count = Team.all.length
puts "#{teams_count} teams were created."

#players
Player.create!([
{ name: "Mobo", age: 25, image_url: "https://...", team: team1 },
{ name: "Jerry", age: 30, image_url: "https://..." , team: team2} ,
{ name: "Bennie", age: 45, image_url: "https://...", team: team3 }
])
players_count = Player.all.length
puts "#{players_count} players were created."
