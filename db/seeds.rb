
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
puts "Destroying all users"
User.destroy_all



require "open-uri"

# file = URI.open("https://thispersondoesnotexist.com/image")
# new_one.photo.attach(file)
# user_cafe.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
# user_cafe.save!
headers = { "X-API-KEY": "CE4F350C-B88643FB-9C69B4CE-5194249D" }
res = HTTParty.get(
  "https://uifaces.co/api?limit=16&emotion[]=happiness",
  headers: headers
)
res = JSON.parse(res.body)

usernames = ["thedeparted", "sauce", "pumpkins", "composition", "greatsquare", "normanbates", "ocean", "thesting", "blackeye", "bat"]

puts "Creating users(cafes)!"

user_cafe1 = User.create!(
  email: "adrewkin@outlook.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
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
  nomacafe_type: "cafe"
)
file = URI.open(res[9]["photo"])
user_cafe10.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
user_cafe10.save!


puts "Creating users(nomads)!"

nomad_user1 = User.create!(
  email: "sadsgf@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
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
  nomacafe_type: "nomad"
)
file = URI.open(res[10]["photo"])
nomad_user1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user1.save!


nomad_user8 = User.create!(
  email: "shsttyd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[11]["photo"])
nomad_user2.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user2.save!


nomad_user9 = User.create!(
  email: "shtyd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[12]["photo"])
nomad_user3.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user3.save!


nomad_user10 = User.create!(
  email: "setyeestad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[13]["photo"])
nomad_user4.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user4.save!


nomad_user11 = User.create!(
  email: "shertylad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[14]["photo"])
nomad_user5.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user5.save!


nomad_user12 = User.create!(
  email: "shrtyryd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[15]["photo"])
nomad_user6.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user6.save!

nomad_user13 = User.create!(
  email: "sadreyf@hotmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[10]["photo"])
nomad_user1.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user1.save!


nomad_user14 = User.create!(
  email: "sherylad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[11]["photo"])
nomad_user2.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user2.save!


nomad_user15 = User.create!(
  email: "swrehd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[12]["photo"])
nomad_user3.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user3.save!


nomad_user16 = User.create!(
  email: "shwerastad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[13]["photo"])
nomad_user4.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user4.save!


nomad_user17 = User.create!(
  email: "shawerad@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[14]["photo"])
nomad_user5.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user5.save!


nomad_user18 = User.create!(
  email: "sasfayd@gmail.com",
  password: "password",
  password_confirmation: "password",
  user_name: usernames.sample,
  nomacafe_type: "nomad"
)
file = URI.open(res[15]["photo"])
nomad_user6.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
nomad_user6.save!


nomad_users = [nomad_user1, nomad_user2, nomad_user3, nomad_user4, nomad_user5, nomad_user6, nomad_user7, nomad_user8, nomad_user9, nomad_user10, nomad_user11, nomad_user12, nomad_user13, nomad_user14, nomad_user15, nomad_user16, nomad_user17, nomad_user18]


# barrios = [
#   "Barrio Barceloneta", "Vecindario Sants de Barcelona", "Áreas Bogatell", 
#   "Ciutadella", "Distrito Eixample", "Barrio El Born", 
#   "Barrio Gótico", "Barrio Gràcia", "Les Corts District", 
#   "Montjuïc", "Plaça España", "Poble Sec", 
#   "Guía La Rambla", "Puerto Olímpico", "El Raval"
# ]

debt = (0..100).to_a
min_debt = (1..10).to_a
seating = (2..6).to_a
start_times = [8, 10, 12]
end_times = [14, 16, 18]
descriptions = [
  "Table by the window", 
  "Table by the corner", 
  "Table under the air conditioner", 
  "Table in the middle of the room", 
  "Table by the stalls", 
  "Table with sunlight"
]



cafes = [
  {
    image_url: "https://i.pinimg.com/564x/49/d2/f6/49d2f636056ce63c3d6732c5c394f328.jpg",
    name: "Stylish Juice & Tea", location: "Avinguda Diagonal, 208, 08018 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe1
  },
  {
    image_url: "https://i.pinimg.com/564x/0d/c3/34/0dc3340f70aa89fc897fa67c36ecf254.jpg",
    name: "Common Room", location: "Carrer de Pujades, 178, 08005 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe2
  },
  {
    image_url: "https://i.pinimg.com/564x/e9/46/de/e946de53c0276f14a2853af418225c98.jpg",
    name: "R Art of Coffe", location: "Carrer de la Canuda, 6, 08002 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe3
  },
  {
    image_url: "https://i.pinimg.com/564x/78/4d/04/784d04ad67d3c6599ad23b2a6adbea1d.jpg",
    name: "Starbucks", location: "Rambla del Raval, s/n, 08001 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe4
  },
  {
    image_url: "https://i.pinimg.com/564x/74/1f/5f/741f5fcf6578d2e39f0eae810641b410.jpg",
    name: "Doctor's Calligraphy", location: "C. de Pallars, 65, 08018 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe5
  },
  {
    image_url: "https://i.pinimg.com/564x/8c/ac/a3/8caca3908bbcd48b1202eb9b94b8309f.jpg",
    name: "MY COFFE", location: "Pg. de Sant Joan, 56, 08009 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe6
  },
  {
    image_url: "https://i.pinimg.com/564x/10/a0/23/10a02329caca2b983bca534f0a658ac9.jpg",
    name: "CRAFT", location: "Av. d'Icària, 167, 08005 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe7
  },
  {
    image_url: "https://i.pinimg.com/564x/3e/28/82/3e2882a7e05a2467f9e05877f7a49f6c.jpg",
    name: "Coffe", location: "Rambla de Catalunya, 10, 08007 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe8
  },
  {
    image_url: "https://i.pinimg.com/564x/af/e5/d1/afe5d1dca4fae869694cc0d64a7c5b85.jpg",
    name: ".RAW", location: "Gran Via de les Corts Catalanes, 680, 08010 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe9
  },
  {
    image_url: "https://i.pinimg.com/564x/98/7e/b2/987eb21905705119e0d4c20de6b97712.jpg",
    name: "In Coffe we trust", location: "Passeig de Lluís Companys, 08003 Barcelona",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample,
    user: user_cafe10
  },
]

reviews = [
  { rating: 5, content: "This is possibly the best thing that has happened to me in my entire life, I am overcome with joy." },
  { rating: 4, content: "I, Greg, approve." },
  { rating: 2, content: "I'm pretty sure they don't was their hands in there, kinda gross." },
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
    owed_money: cafe[:owed_money],
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
      name: descriptions.sample
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
    start_time: date.change({hour: start_times.sample}),
    end_time: date.change({hour: end_times.sample}),
    status: 1
  )
  review = reviews.sample
  # For every table we aslo create a review
  Review.create!(
    rating: review[:rating], 
    content: review[:content], 
    booking: new_booking
  )
end

puts "Created #{User.count} users"
puts "Created #{Cafe.count} cafes"
puts "Created #{Table.count} tables" 
puts "Created #{Booking.count} bookings"
puts "Created #{Review.count} reviews"
