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
team2 = Team.create!( { name: "Tennessee Titans",  image_url: "http://www.gunaxin.com/wp-content/uploads/2015/07/Tennessee_Titans_logo.svg_-560x397.png" } )
team3 = Team.create!( { name: "Chelsea",  image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/1024px-Chelsea_FC.svg.png" } )
team4 = Team.create!( { name: "Honduras", image_url: "http://www.freelogovectors.net/wp-content/uploads/2014/06/honduras-national-football-team-association-football-in-honduras-logo.jpg"})
team5 = Team.create!( { name: "Barcelona", image_url: "https://s-media-cache-ak0.pinimg.com/736x/06/0d/64/060d64666183d83b93af2df759e75ecd--barcelona-players-sports-logos.jpg"  } )
team6 = Team.create!( { name: "Ajax", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/Ajax_Amsterdam.svg/1017px-Ajax_Amsterdam.svg.png"})
teams_count = Team.all.length
puts "#{teams_count} teams were created."

#players
player1=Player.create!({ name: "Mobo", age: 25, image_url: "https://...", team: team1 }),
player2=Player.create!({ name: "Jerry", age: 30, image_url: "https://...", team: team1}),
player3=Player.create!({ name: "Bennie", age: 45, image_url: "https://...", team: team1}),
player4=Player.create!({ name: "Katinka", age: 25, image_url: "https://...", team: team1}),
player5=Player.create!({ name: "Arno", age: 30, image_url: "https://...", team: team1}),
player6=Player.create!({ name: "Hans", age: 45, image_url: "https://...", team: team1 }),
player7=Player.create!({ name: "Mariam", age: 25, image_url: "https://...", team: team1 }),
player8=Player.create!({ name: "James", age: 30, image_url: "https://...", team: team1}),
player9=Player.create!({ name: "Janet", age: 45, image_url: "https://...", team: team1 }),
player10=Player.create!({ name: "Elvis", age: 25, image_url: "https://...", team: team1 }),
player11=Player.create!({ name: "Jannie", age: 30, image_url: "https://...", team: team1})

players_count = Player.all.length
puts "#{players_count} players were created."
