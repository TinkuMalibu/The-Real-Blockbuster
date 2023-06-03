# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.new(first_name: "Aaron", last_name: "Deik", phone_number: "1231331")

Movie.new(title: "Harry Potter", price: 3000, genre: "Fantastico", synopsis: "Hay poderes", poster_url: "https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/01/harry-potter-1.jpg?fit=2500%2C1576&quality=50&strip=all&ssl=1", director: "Rowling", user_id: 1)
