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
team1 = Team.create!( { name: "FC Utrecht", image_url: "https://www.fcutrecht.nl/websites/implementatie/website/img/fcutrecht.svg"  } )
team2 = Team.create!( { name: "Barcelona",  image_url: "https://www.fcutrecht.nl/websites/implementatie/website/img/fcutrecht.svg" } )
team3 = Team.create!( { name: "Chelsea",  image_url: "https://www.fcutrecht.nl/websites/implementatie/website/img/fcutrecht.svg" } )

teams_count = Team.all.length
puts "#{teams_count} teams were created."

#players
Player.create!([
{ name: "Mobo", age: 25, image_url: "https://...", team: team1 },
{ name: "Jerry", age: 30, image_url: "https://..." , team: team1} ,
{ name: "Bennie", age: 45, image_url: "https://...", team: team1 },
{ name: "Katinka", age: 25, image_url: "https://...", team: team1 },
{ name: "Arno", age: 30, image_url: "https://..." , team: team1} ,
{ name: "Hans", age: 45, image_url: "https://...", team: team1 },
{ name: "Mariam", age: 25, image_url: "https://...", team: team1 },
{ name: "James", age: 30, image_url: "https://..." , team: team1} ,
{ name: "Janet", age: 45, image_url: "https://...", team: team1 },
{ name: "Elvis", age: 25, image_url: "https://...", team: team1 },
{ name: "Jannie", age: 30, image_url: "https://..." , team: team1}
])
players_count = Player.all.length
puts "#{players_count} players were created."
