puts "destroy record"
User.destroy_all
Movie.destroy_all
Rental.destroy_all

puts "creando primer usuario"
usuario = User.create!(first_name: "Aaron", last_name: "Deik", phone_number: "1341234", address: "sfsafsf", email: "aaron@gmail.com", password: "123456")
puts "creando segundo usuario"
usuario2 = User.create!(first_name: "Matias", last_name: "Avaca", phone_number: "123331", address: "sfsafsf", email: "matias@gmail.com", password: "123456")

puts "creando tercer usuario"
usuario3 = User.create!(first_name: "Cecilia", last_name: "Reynoso", phone_number: "124431331", address: "sfsafsf", email: "cecilia@gmail.com", password: "123456")

puts "creando cuarto usuario"
usuario4 = User.create!(first_name: "Lorenzo", last_name: "Figueroa", phone_number: "1231331", address: "sfsafsf", email: "lorenzo@gmail.com", password: "123456")


# puts "creando reviews"

# reviews = Review.create!()
# # Rental.new(user_id: 1, movie_id: 2, date: '01-01-2020', return_date: '07-01-2020')
