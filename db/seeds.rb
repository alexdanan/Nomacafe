# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

puts "Destroying all reviews"
Review.destroy_all
puts "Smashing all tables"
Table.destroy_all
puts "Destroying all cafes"
Cafe.destroy_all
puts"Destroying all orders"
Order.destroy_all
puts"Destroying all Packages"
Package.destroy_all
puts "Destroying all users"
User.destroy_all




require "open-uri"

# file = URI.open("https://thispersondoesnotexist.com/image")
# new_one.photo.attach(file)
# user_cafe.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
# user_cafe.save!
headers = { "X-API-KEY": "CE4F350C-B88643FB-9C69B4CE-5194249D" }
res = HTTParty.get("https://uifaces.co/api?limit=30&emotion[]=happiness", headers: headers)
res = JSON.parse(res.body)

usernames = ["coffe_lover", "nomad", "milshad", "alexdanan", "digitally", "coding_mondays", "ctrl+s", "freelancer", "lacueva", "vladislav", "stack_overflow", "git_hubber", "rake", "nomacafe_user_03", "entrepeneur"]
fullnames = ["Adrian Lazcano", "Ferran Aliagas", "Isaac Basas", "Arnau Gabriel", "Álvaro Delgado", "César Reigada", "Georg Ingrid", "Oscar Fortit", "Ingrid Montserrat", "Bruce Wayne", "Johnathan Kleio", "Gorge Martin", "Elena Garcia"]
description = [
"Hey there! My favourite coffes are capucchinos and lattes, I live around Gràcia and hope to see you around to code together!",
"Good day, looking for someone to chat about start ups and coding prohects? I'm just around the corner, you can always find me in one of my favourites cafes so we can have a nice chat!",
"Hello world, searching to meet up and crunch some code lines? Come over and we can help eachother, everything is easier as a team. wouldn't you say?",
"Hello there! I'm new to the programming world, but I'm still excited to learn! If you want to practice with me, don't be afraid to come over! A warm seat will always be open!"
]
puts "Creating users(cafes)!"

user_cafe1 = User.create!(
  email: "adrewkin@outlook.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[0]["photo"])
user_cafe1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe1.save!


user_cafe2 = User.create!(
  email: "lacuevafortitcarlos@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[1]["photo"])
user_cafe2.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe2.save!


user_cafe3 = User.create!(
  email: "sassia93@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[2]["photo"])
user_cafe3.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe3.save!


user_cafe4 = User.create!(
  email: "shadpourmillad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[3]["photo"])
user_cafe4.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe4.save!


user_cafe5 = User.create!(
  email: "asgs@outlook.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[4]["photo"])
user_cafe5.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe5.save!


user_cafe6 = User.create!(
  email: "lacuevag@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[5]["photo"])
user_cafe6.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe6.save!


user_cafe7 = User.create!(
  email: "sasssgf@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[6]["photo"])
user_cafe7.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe7.save!


user_cafe8 = User.create!(
  email: "shaddsg@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[7]["photo"])
user_cafe8.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe8.save!


user_cafe9 = User.create!(
  email: "afdb@outlook.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[8]["photo"])
user_cafe9.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe9.save!


user_cafe10 = User.create!(
  email: "lasdgarlos@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[9]["photo"])
user_cafe10.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe10.save!


user_cafe11 = User.create!(
  email: "lagarlos@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[28]["photo"])
user_cafe11.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe11.save!


user_cafe12 = User.create!(
  email: "legolas@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
file = URI.open(res[29]["photo"])
user_cafe12.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe12.save!


user_cafe13 = User.create!(
  email: "lazcano@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
user_cafe13.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/elena.jpg')), filename: 'elena.jpg')
user_cafe13.save!


user_cafe14 = User.create!(
  email: "kassadin@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
user_cafe14.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/georg.jpg')), filename: 'georg.jpg')
user_cafe14.save!


user_cafe15 = User.create!(
  email: "raulmedrei@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
user_cafe15.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/trinidad.jpg')), filename: 'trinidad.jpg')
user_cafe15.save!

user_cafe16 = User.create!(
  email: "arnaugabriel@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
user_cafe16.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/yanik.jpg')), filename: 'yanik.jpg')
user_cafe16.save!

user_cafe17 = User.create!(
  email: "rebus@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "cafe"
)
user_cafe17.photo.attach(io: File.open(File.join(Rails.root,'app/assets/images/vlad.jpg')), filename: 'vlad.jpg')
user_cafe17.save!

puts "Creating users(nomads)!"

nomad_user1 = User.create!(
  email: "sadsgf@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[10]["photo"])
nomad_user1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user1.save!


nomad_user2 = User.create!(
  email: "user@nomacafe.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[11]["photo"])
nomad_user2.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user2.save!


nomad_user3 = User.create!(
  email: "shrthd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[12]["photo"])
nomad_user3.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user3.save!


nomad_user4 = User.create!(
  email: "shsdgestad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[13]["photo"])
nomad_user4.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user4.save!


nomad_user5 = User.create!(
  email: "shssrylad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[14]["photo"])
nomad_user5.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user5.save!


nomad_user6 = User.create!(
  email: "shsdsryd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[15]["photo"])
nomad_user6.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user6.save!


nomad_user7 = User.create!(
  email: "hyydf@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[16]["photo"])
nomad_user7.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user7.save!


nomad_user8 = User.create!(
  email: "shsttyd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[17]["photo"])
nomad_user8.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user8.save!


nomad_user9 = User.create!(
  email: "shtyd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[18]["photo"])
nomad_user9.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user9.save!


nomad_user10 = User.create!(
  email: "setyeestad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[19]["photo"])
nomad_user10.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user10.save!


nomad_user11 = User.create!(
  email: "shertylad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[20]["photo"])
nomad_user11.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user11.save!


nomad_user12 = User.create!(
  email: "shrtyryd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[21]["photo"])
nomad_user12.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user12.save!

nomad_user13 = User.create!(
  email: "sadreyf@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[22]["photo"])
nomad_user13.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user13.save!


nomad_user14 = User.create!(
  email: "sherylad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[23]["photo"])
nomad_user14.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user14.save!


nomad_user15 = User.create!(
  email: "swrehd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[24]["photo"])
nomad_user15.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user15.save!


nomad_user16 = User.create!(
  email: "shwerastad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[25]["photo"])
nomad_user16.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user16.save!


nomad_user17 = User.create!(
  email: "shawerad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[26]["photo"])
nomad_user17.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user17.save!


nomad_user18 = User.create!(
  email: "sasfayd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  full_name: fullnames.sample,
  description: description.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[27]["photo"])
nomad_user18.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user18.save!


nomad_users = [nomad_user1, nomad_user2, nomad_user3, nomad_user4, nomad_user5, nomad_user6, nomad_user7, nomad_user8, nomad_user9, nomad_user10, nomad_user11, nomad_user12, nomad_user13, nomad_user14, nomad_user15, nomad_user16, nomad_user17, nomad_user18]


# barrios = [
#   "Barrio Barceloneta", "Vecindario Sants de Barcelona", "Áreas Bogatell", 
#   "Ciutadella", "Distrito Eixample", "Barrio El Born", 
#   "Barrio Gótico", "Barrio Gràcia", "Les Corts District", 
#   "Montjuïc", "Plaça España", "Poble Sec", 
#   "Guía La Rambla", "Puerto Olímpico", "El Raval"
# ]

debt = (0..100).to_a
min_debt = (10..15).to_a
seating = (2..6).to_a
start_times = [11, 15]
end_times = [15, 19]
descriptions = [
  "Table by the window", 
  "Table by the corner", 
  "Table by air conditioner",
  "Table middle of the room",
  "Table by the stalls", 
  "Table with sunlight"
]
wifi = [true, false]
outlet = [true, false]
outside = [true, false]



cafes = [
  {
    image_url: "https://images.unsplash.com/photo-1508424757105-b6d5ad9329d0?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
    name: "BROEI", location: "Avinguda Diagonal, 208, 08018 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe1
  },
  {
    image_url: "https://images.unsplash.com/photo-1481833761820-0509d3217039?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    name: "Relax", location: "Carrer de Pujades, 178, 08005 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe2
  },
  {
    image_url: "https://images.unsplash.com/photo-1514933651103-005eec06c04b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
    name: "R Art of Coffe", location: "Carrer de la Canuda, 6, 08002 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe3
  },
  {
    image_url: "https://images.unsplash.com/photo-1559925393-8be0ec4767c8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1051&q=80",
    name: "Human", location: "Rambla del Raval, s/n, 08001 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe4
  },
  {
    image_url: "https://images.unsplash.com/photo-1529676468696-f3a47aba7d5d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
    name: "Office", location: "C. de Pallars, 65, 08018 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe5
  },
  {
    image_url: "https://i.pinimg.com/564x/8c/ac/a3/8caca3908bbcd48b1202eb9b94b8309f.jpg",
    name: "MY COFFE", location: "Pg. de Sant Joan, 56, 08009 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe6
  },
  {
    image_url: "https://i.pinimg.com/564x/10/a0/23/10a02329caca2b983bca534f0a658ac9.jpg",
    name: "CRAFT", location: "Av. d'Icària, 167, 08005 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe7
  },
  {
    image_url: "https://i.pinimg.com/564x/3e/28/82/3e2882a7e05a2467f9e05877f7a49f6c.jpg",
    name: "Coffe", location: "Rambla de Catalunya, 10, 08007 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe8
  },
  {
    image_url: "https://i.pinimg.com/564x/af/e5/d1/afe5d1dca4fae869694cc0d64a7c5b85.jpg",
    name: ".RAW", location: "Gran Via de les Corts Catalanes, 680, 08010 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe9
  },
  {
    image_url: "https://i.pinimg.com/564x/98/7e/b2/987eb21905705119e0d4c20de6b97712.jpg",
    name: "In Coffe we trust", location: "Passeig de Lluís Companys, 08003 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe10
  },
  {
    image_url: "https://images.unsplash.com/photo-1521017432531-fbd92d768814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
    name: "Pietro's", location: "Carrer de l'Escorial, 17, 08024 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe11
  },
  {
    image_url: "https://images.unsplash.com/photo-1493857671505-72967e2e2760?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    name: "Bikin'n out", location: "Carrer Gran de Gràcia, 81, 08012 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    user: user_cafe12
  },
  {
    image_url: "https://images.unsplash.com/photo-1505275350441-83dcda8eeef5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80",
    name: "L'estranger", location: "Plaça d'Alfonso Comín, 5, 7, 08023 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe13
  },
  {
    image_url: "https://images.unsplash.com/photo-1579869696034-ec145eb3987c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    name: "Que callem?", location: "Carrer de Ramón y Cajal, 122, 08024 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe14
  },
  {
    image_url: "https://images.unsplash.com/photo-1617006898062-b7348c051570?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1034&q=80",
    name: "Stir Coffe Co.", location: "Carrer d'Olot, 08024 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe15
  },
  {
    image_url: "https://images.unsplash.com/photo-1551887196-72e32bfc7bf3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80",
    name: "The creative Exchange", location: "Carrer de la Indústria, 46, 08025 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe16
  },{
    image_url: "https://images.unsplash.com/photo-1494346480775-936a9f0d0877?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1003&q=80",
    name: "The Nomad", location: "Carrer de Pi i Margall, 22, 24, 08025 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe17
  }
]

puts "Creating Millad's profile"

millad_user = User.create!(
  email: "millad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: "millad",
  full_name: "Millad Shadpour",
  description: description.sample,
  nomacafe_type: "nomad"
  )
file = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1619192660/rqy8htlgdo9v0fvujs14.jpg")
millad_user.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
millad_user.save!


alexia_user = User.create!(
  email: "alexia@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: "alexia",
  full_name: "Alexia Danan",
  description: description.sample,
  nomacafe_type: "cafe"
  )
file = URI.open("https://avatars.githubusercontent.com/u/80625819?v=4")
alexia_user.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
alexia_user.save!


carlos_user = User.create!(
  email: "carlos@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: "lacueva",
  full_name: "Carlos Lacueva",
  description: description.sample,
  nomacafe_type: "nomad"
  )
file = URI.open("https://avatars.githubusercontent.com/u/78426436?v=4")
carlos_user.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
carlos_user.save!


alexia_cafe = Cafe.create!(
  name: "Gatsby Cafe",
  location: "Carrer de Roger de Flor, 316, 08025 Barcelona",
  opening_times: "9:00 A.M. Monday to Friday",
  user: alexia_user
  )

file = URI.open("https://images.unsplash.com/photo-1554118811-1e0d58224f24?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1330&q=80")
alexia_cafe.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
alexia_cafe.save!

alexia_table_1 = Table.create!(
  cafe: alexia_cafe,
  spots: seating.sample,
  min_credits: min_debt.sample,
  seat: "chair",
  name: "Table with sunlight and breeze",
  wifi: false,
  outlet: true,
  outside: true
)

alexia_table_2 = Table.create!(
  cafe: alexia_cafe,
  spots: seating.sample,
  min_credits: min_debt.sample,
  seat: "sofa",
  name: descriptions.sample,
  wifi: true,
  outlet: true,
  outside: false
)

alexia_table_3 = Table.create!(
  cafe: alexia_cafe,
  spots: seating.sample,
  min_credits: min_debt.sample,
  seat: "chair",
  name: descriptions.sample,
  wifi: true,
  outlet: true,
  outside: false
)

alexia_table_4 = Table.create!(
  cafe: alexia_cafe,
  spots: seating.sample,
  min_credits: min_debt.sample,
  seat: "chair",
  name: descriptions.sample,
  wifi: true,
  outlet: outlet.sample,
  outside: false
)

alexia_reviews = [
  { rating: 5, content: "This is possibly the best thing that has happened to me in my entire life, I am overcome with joy." },
  { rating: 4, content: "I, Greg, approve." },
  { rating: 5, content: "My only regret is that I can only give 5 stars instead of 10." },
  { rating: 4, content: "One of the best spots to program and chill I've ever seen" }
]

date_array = []
10.times do
  new_date_time = (DateTime.now + (-5..10).to_a.sample)
  date_array << new_date_time
end

alexia_tables = [alexia_table_1, alexia_table_2, alexia_table_3, alexia_table_4]
alexia_tables.each_with_index do |table, index|
  date = date_array.sample
  alexia_booking = Booking.create!(
    user: nomad_users.sample,
    table: table,
    slots: [
      "morning_#{date}",
      "afternoon_#{date}"
    ],
    status: 1
  )
  Review.create!(
      rating: alexia_reviews[index][:rating], 
      content: alexia_reviews[index][:content], 
      booking: alexia_booking
  )
end

# date = date_array.sample
# alexia_booking = Booking.create!(
#   user: nomad_users.sample,
#   table: table,
#   slots: [
#     "morning_#{date}",
#     "afternoon_#{date}"
#   ],
#   status: 1
# )



reviews = [
  { rating: 5, content: "This is possibly the best thing that has happened to me in my entire life, I am overcome with joy." },
  { rating: 4, content: "I, Greg, approve." },
  { rating: 2, content: "I'm pretty sure they don't wash their hands in there, kinda gross." },
  { rating: 5, content: "My only regret is that I can only give 5 stars instead of 10." },
  { rating: 1, content: "Awful service, I hate it here." },
  { rating: 4, content: "One of the best spots to program and chill I've ever seen" }
]

# We iterate over the cafes array created earlier and for every one of them, we
# grab a specific part, and use it to create a Cafe

puts "Creating cafes and tables!"

cafes.each do |cafe|
  new_cafe = Cafe.create(
    name: cafe[:name], 
    location: cafe[:location], 
    opening_times: cafe[:opening_times], 
    user: cafe[:user]

  )

  file = URI.open(cafe[:image_url])
  # new_one.photo.attach(file)
  new_cafe.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
  new_cafe.save!

  # We create a Table nested inside the cafes iteration to create one for every cafe
  # we also create
  5.times do 
    new_table = Table.create!(
      # In the next line, we can skip writing the "id" part for both of them, since they already reference eachother in the models
      # and it's smart enough to figure out the connection
      cafe: new_cafe,
      spots: seating.sample,
      min_credits: min_debt.sample,
      seat: Table::SEAT.sample,
      name: descriptions.sample,
      wifi: wifi.sample,
      outlet: outlet.sample,
      outside: outside.sample
    )
  end
end

# We create a booking for every table since bookings belong to tables
# This part doesn't need to be nested inside the cafes iteration because
# the booking in there are already created and can be accessed from outside
puts "Creating bookings and reviews!"

date_array = []
10.times do
  new_date_time = (DateTime.now + (-5..10).to_a.sample)
  date_array << new_date_time
end

Table.all.each do |table|
  date = date_array.sample
  new_booking = Booking.create!(
    # Same as line 128
    user: nomad_users.sample,
    table: table,
    slots: [
      "morning_#{date}",
      "afternoon_#{date}"
    ],
    status: 1
  )
  review = reviews.sample
  # For every table we also create a review
  Review.create!(
    rating: review[:rating], 
    content: review[:content], 
    booking: new_booking
  )
end

puts "Creating favourites"

nomad_users.each do |nomad|
  nomad.favourite_cafes = Cafe.all.sample(3)
end

booking_text = [
  { text: "Awesome service, love it here", rating: 4 },
  { text: "They serve the tastiest coffe in the world", rating: 4 },
  { text: "Absolutely terrible service, if I could give 0 stars, I would", rating: 1 },
  { text: "I've fallen in love with cafes all over again thanks to this place!", rating: 5 },
  { text: "Meh, I've seen better", rating: 3 },
]

Booking.where.not(user_id:alexia_user.id).each do |booking|
  data = booking_text.sample
  Review.create(
    booking_id: booking.id,
    content: data[:text],
    rating: data[:rating]
  )
end
puts "Creating Packages"

Package.create!(
  name: "Frappuccino",
  credits: 200,
  fee: 15,
  price: 215
  )
Package.create!(
  name: "Cappuccino",
  credits: 100,
  fee: 10,
  price: 110
  )


Package.create!(
  name: "Expresso",
  credits: 50,
  fee: 7,
  price: 57
  )

Package.create!(
  name: "Ristretto",
  credits: 20,
  fee: 4,
  price: 24
  )

puts "Created #{User.count} users"
puts "Created #{Cafe.count} cafes"
puts "Created #{Table.count} tables" 
puts "Created #{Booking.count} bookings"
puts "Created #{Review.count} reviews"
