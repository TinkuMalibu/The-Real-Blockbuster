require "open-uri"

puts "destroy record"
Movie.destroy_all
User.destroy_all
Rental.destroy_all

puts "creando primer usuario"
usuario1 = User.create!(first_name: "Aaron", last_name: "Deik", phone_number: "1341234", address: "sfsafsf", email: "aaron@gmail.com", password: "123456")
usuario2 =User.create!(first_name: "Matias", last_name: "Avaca", phone_number: "123331", address: "sfsafsf", email: "matias@gmail.com", password: "123456")
puts "creando tercer usuario"
usuario3 =User.create!(first_name: "Cecilia", last_name: "Reynoso", phone_number: "124431331", address: "sfsafsf", email: "cecilia@gmail.com", password: "123456")

puts "creando cuarto usuario"
usuario4 =User.create!(first_name: "Lorenzo", last_name: "Figueroa", phone_number: "1231331", address: "sfsafsf", email: "lorenzo@gmail.com", password: "123456")

puts "creando peliculas"
movie1 = Movie.new(user: usuario1, title: "Harry Potter", genre: "Fantasy", synopsis: "Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard—with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths—and about the villain who's to blame.", director: "Chris Columbus",year: 2001)
file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
movie1.poster_url.attach(io: file, filename: "movie1.jpg", content_type: "image/jpg")
movie1.save!

movie2 = Movie.create!(user: usuario1, title: "Rocky",genre: "Fantasy", synopsis: "An uneducated collector for a Philadelphia loan shark is given a once-in-a-lifetime opportunity to fight against the world heavyweight boxing champion.", director: "John G. Avildsen",year: 1976)
file = URI.open("https://www.themoviedb.org/t/p/original/hEjK9A9BkNXejFW4tfacVAEHtkn.jpg")
movie2.poster_url.attach(io: file, filename: "movie2.jpg", content_type: "image/jpg")
movie2.save!

movie3 = Movie.create!(user: usuario2, title: "Breathless", genre: "Fantasy", synopsis: "Everything is cinema! Godard’s impossibly cool debut revamps the thrills of the gangster film, like shootouts and police chases, with chic, anarchic, and ironic attitude. A hip, free-form tour through Paris, love, and film itself that announced there were no rules—and it was just the beginning.", director: "JEAN-LUC GODARD",year: 1960)
file = URI.open("https://assets.mubicdn.net/images/film/268/image-w1280.jpg?1578600036")
movie3.poster_url.attach(io: file, filename: "movie3.jpg", content_type: "image/jpg")
movie3.save!

movie4 = Movie.create!(user: usuario2, title: "Tarzan", genre: "Fantasy", synopsis: "La gorila Kala encuentra un niño huérfano en la jungla y lo adopta como su propio hijo a pesar de la oposición de Kerchak, el jefe de la manada. El joven Tarzán crecerá en la jungla desarrollando los instintos de los animales y aprendiendo a deslizarse por los árboles a una gran velocidad. El joven vive como un animal hasta que una expedición se adentra en la jungla y conoce a Jane, que le hará descubrir quién es realmente y cuál es el mundo al que pertenece.", director: "Kevin Lima",year: 1999)
file = URI.open("https://rallymundial.net/wp-content/uploads/2020/06/Tarzan-finalmente-esta-transmitiendo-en-Disney.jpgquality90stripallw1200.jpeg")
movie4.poster_url.attach(io: file, filename: "movie4.jpeg", content_type: "image/jpeg")
movie4.save!

movie5 = Movie.create!(user: usuario3, title: "ROCCO AND HIS BROTHERS", genre: "Fantasy", synopsis: "Joining the exodus of millions from Italy’s impoverished south, a matriarch and her sons move to Milan in search of a better life in the industrial north. But, as they inch up the social ladder, family bonds are shredded, and saintly Rocco’s love for a sex worker drives his brutish brother to crime.", director: "Luchino Visconti",year: 1960)
file = URI.open("https://filasiete.com/wp-content/uploads/2016/01/roccoyhermanos1.jpg")
movie5.poster_url.attach(io: file, filename: "movie5.jpg", content_type: "image/jpg")
movie5.save!

movie6 = Movie.create!(user: usuario3, title: "Philadelphia", genre: "Fantasy", synopsis: "Two competing lawyers join forces to sue a prestigious law firm for AIDS discrimination. As their unlikely friendship develops their courage overcomes the prejudice and corruption of their powerful adversaries.", director: "Jonathan Demme",year: 1993)
file = URI.open("https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tFe5Yoo5zT495okA49bq1vPPkiV.jpg")
movie6.poster_url.attach(io: file, filename: "movie6.jpg", content_type: "image/jpg")
movie6.save!

movie7 = Movie.create!(user: usuario4, title: "2001: A SPACE ODYSSEY", genre: "Fantasy", synopsis: "A mysterious black monolith encountered by our prehistoric past leaps millennia and connects to a future of colonised space. Where astronaut Bowman is about to explore uncharted territory. A poetic meditation on technology and humanity adapted from a story by the revered Arthur C. Clarke", director: "Stanley Kubrick",year: 1968)
file = URI.open("https://i0.wp.com/www.raptisrarebooks.com/images/88802/2001-a-space-odyssey-arthur-c-clarke-first-edition-signed-rare-book.jpg?fit=1000%2C800&ssl=1")
movie7.poster_url.attach(io: file, filename: "movie7.jpg", content_type: "image/jpg")
movie7.save!

puts "peliculas creadas"
puts "rentals"

rental1 = Rental.new(movie_id: movie1.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario2.id)
rental1.save!
rental2 = Rental.new(movie_id: movie2.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario2.id)
rental2.save
rental2 = Rental.new(movie_id: movie3.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario1.id)
rental2.save
rental2 = Rental.new(movie_id: movie4.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario1.id)
rental2.save
rental2 = Rental.new(movie_id: movie5.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario4.id)
rental2.save
rental2 = Rental.new(movie_id: movie6.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario4.id)
rental2.save
rental2 = Rental.new(movie_id: movie7.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario3.id)
rental2.save
rental2 = Rental.new(movie_id: movie2.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario3.id)
rental2.save
rental2 = Rental.new(movie_id: movie5.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario4.id)
rental2.save
rental2 = Rental.new(movie_id: movie1.id, rent_date:"2023-7-17", return_date:"2023-7-20", user_id: usuario2.id)
rental2.save
