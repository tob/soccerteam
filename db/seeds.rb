# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.delete_all
Team.delete_all

#teams -- I added the tema sto an array to be able to use them randomly while creating the players with teams.sample .
teams = []
teams << team1 = Team.create!( { name: "FC Utrecht", image_url: "https://www.fcutrecht.nl/websites/implementatie/website/img/fcutrecht.svg"  } )
teams << team2 = Team.create!( { name: "Tennessee Titans",  image_url: "http://www.gunaxin.com/wp-content/uploads/2015/07/Tennessee_Titans_logo.svg_-560x397.png" } )
teams << team3 = Team.create!( { name: "Chelsea",  image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/1024px-Chelsea_FC.svg.png" } )
teams << team4 = Team.create!( { name: "Honduras", image_url: "http://www.freelogovectors.net/wp-content/uploads/2014/06/honduras-national-football-team-association-football-in-honduras-logo.jpg"})
teams << team5 = Team.create!( { name: "Barcelona", image_url: "https://s-media-cache-ak0.pinimg.com/736x/06/0d/64/060d64666183d83b93af2df759e75ecd--barcelona-players-sports-logos.jpg"  } )
teams << team6 = Team.create!( { name: "Ajax", image_url: "https://upload.wikimedia.org/wikipedia/en/thumb/7/79/Ajax_Amsterdam.svg/1017px-Ajax_Amsterdam.svg.png"})

teams_count = Team.all.length
puts "#{teams_count} teams were created."

#names used to create players,
# source: https://docs.google.com/spreadsheets/d/1u0YQ0ZYSHA-x4cVs_iVqjx8GXpQmnBUFMHog6aAZ764/edit#gid=1
names = [
  "Lionel Messi","Cristiano Ronaldo","Xavi","Andres Iniesta","Zlatan Ibrahimovic","Radamel Falcao","Robin van Persie","Andrea Pirlo","Yaya Toure","Edinson Cavani","Sergio Aguero","Iker Casillas","Neymar","Sergio Busquets","Xabi Alonso","Thiago Silva","Mesut Ozil","David Silva","Bastian Schweinsteiger","Gianluigi Buffon","Luis Suarez","Sergio Ramos","Vincent Kompany","Gerard Pique" ,
  "Philipp Lahm","Willian","Marco Reus","Franck Ribery","Manuel Neuer","Ashley Cole","Wayne Rooney","Juan Mata","Thomas Muller","Mario Götze","Karim Benzema","Cesc Fabregas","Oscar","Fernandinho","Javier Mascherano","Gareth Bale","Javier Zanetti","Daniele De Rossi","Dani Alves","Petr Cech","Mats Hummels","Carles Puyol","Angel Di Maria","Carlos Tevez",
  "Didier Drogba","Giorgio Chiellini","Marcelo","Stephan El Shaarawy","Toni Kroos","Samuel Eto’o","Jordi Alba","Mario Gomez","Arturo Vidal","Eden Hazard","James Rodriguez","Marouane Fellaini","Ramires","David Villa","Klaas Jan Huntelaar","Nemanja Vidic","Joe Hart","Arjen Robben","Mario Balotelli","Mathieu Valbuena","Pierre-Emerick Aubameyang","Robert Lewandowski","Hernanes","Pedro","Santi Cazorla",
  "Christian Eriksen","Ezequiel Lavezzi","Joao Moutinho","Mario Mandžukić","Patrice Evra","David Luiz","Luka Modric","Victor Wanyama","Mapou Yanga-M'Biwa","Hulk","Darijo Srna","Emmanuel Mayuka","John Terry","Kwadwo Asamoah","Leonardo Bonucci","Javier Pastore","Henrikh Mkhitaryan","Moussa Dembele","Hatem Ben Arfa","Samir Nasri","Shinji Kagawa","Wesley Sneijder","Pepe","Marek Hamsik","Javi Martinez",
  "Diego Forlan","Paulinho"
]

# Test player -- I added the team attr to make it work but I'm pretty sure it is the wrong way to do this.
player0 = Player.create!({ name: names[1], age: 19, image_url: "http://3.bp.blogspot.com/-p4JvM7rWNG4/T6ZcU5eKqTI/AAAAAAAACGM/K0DB35A5brE/s1600/facebook.gif", team: teams.sample})

# dynamically creates xx players, the only issue is that they all have the same name = player. I'm looking for a solution, I'd like to dynamically create the name e.g. player1, player2, player3, etc...
for player in 0 ... names.size
    count_age = rand(19..45)
    player = Player.create!({ name: names[player], age: count_age, image_url: "http://3.bp.blogspot.com/-p4JvM7rWNG4/T6ZcU5eKqTI/AAAAAAAACGM/K0DB35A5brE/s1600/facebook.gif", team: teams.sample})
end

#prints the number of players contained in Player
players_count = Player.all.length
puts "#{players_count} players were created."

# prints all the players name
# Player.all.each do |player|
#   puts "#{player} - #{player[:name]}, #{player[:age]} - #{player[:team]}"
# end

#prints players divided in teams
Team.all.each do |team|
  puts "*"*40 #divider
  puts "TEAM - #{team[:name]}"
  puts "*"*40 #divider

  team.players.all.each do |player|
    puts "#{player[:name]}"
  end

  puts "*"*40 #divider
  puts "*"*40 #divider
end
