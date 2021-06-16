
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
puts "Destroying all users"
User.destroy_all
puts "Destroying all cafes"
Cafe.destroy_all
puts "Smashing all tables"
Table.destroy_all

require "open-uri"

vlad = User.create(email: "adrewkin@outlook.com", password: "password", password_confirmation: "password")
carlos = User.create(email: "lacuevafortitcarlos@gmail.com", password: "password", password_confirmation: "password")
alexia = User.create(email: "sassia93@hotmail.com", password: "password", password_confirmation: "password")
millad = User.create(email: "shadpourmillad@gmail.com", password: "password", password_confirmation: "password")

barrios = [
  "Barrio Barceloneta", "Vecindario Sants de Barcelona", "Áreas Bogatell", 
  "Ciutadella", "Distrito Eixample", "Barrio El Born", 
  "Barrio Gótico", "Barrio Gràcia", "Les Corts District", 
  "Montjuïc", "Plaça España", "Poble Sec", 
  "Guía La Rambla", "Puerto Olímpico", "El Raval"
]

debt = (0..100).to_a
min_debt = (1..10).to_a
seating = (2..6).to_a
start_times = ["08:00", "10:00", "12:00"]
end_times = ["14:00", "16:00", "18:00"]
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
    name: "Stylish Juice & Tea", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/0d/c3/34/0dc3340f70aa89fc897fa67c36ecf254.jpg",
    name: "Common Room", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/e9/46/de/e946de53c0276f14a2853af418225c98.jpg",
    name: "R Art of Coffe", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/78/4d/04/784d04ad67d3c6599ad23b2a6adbea1d.jpg",
    name: "Starbucks", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/74/1f/5f/741f5fcf6578d2e39f0eae810641b410.jpg",
    name: "Doctor's Calligraphy", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/8c/ac/a3/8caca3908bbcd48b1202eb9b94b8309f.jpg",
    name: "MY COFFE", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/10/a0/23/10a02329caca2b983bca534f0a658ac9.jpg",
    name: "CRAFT", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/3e/28/82/3e2882a7e05a2467f9e05877f7a49f6c.jpg",
    name: "Coffe", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/af/e5/d1/afe5d1dca4fae869694cc0d64a7c5b85.jpg",
    name: ".RAW", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
  },
  {
    image_url: "https://i.pinimg.com/564x/98/7e/b2/987eb21905705119e0d4c20de6b97712.jpg",
    name: "In Coffe we trust", location: "#{barrios.sample}, Barcelona, Spain",
    opening_times: "9:00 A.M. Monday to Friday",
    owed_money: debt.sample
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
cafes.each do |cafe|
  new_user = User.all.sample
  new_cafe = Cafe.create(
    name: cafe[:name], 
    location: cafe[:location], 
    opening_times: cafe[:opening_times], 
    owed_money:[:owed_money],
    user: new_user
  )
  file = URI.open(cafe[:image_url])
  # new_one.photo.attach(file)
  new_cafe.photo.attach(io: file, filename: 'image.png', content_type: 'image/png')
  new_cafe.save!

  # We create a Table nested inside the cafes iteration to create one for every cafe
  # we also create
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

# We create a booking for every table since bookings belong to tables
# This part doesn't need to be nested inside the cafes iteration because
# the booking in there are already created and can be accessed from outside
Table.all.each do |table|
  new_booking = Booking.create!(
    # Same as line 128
    user: User.all.sample,
    table: table,
    start_time: start_times.sample,
    end_time: end_times.sample,
    status: (0..1).to_a.sample
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
