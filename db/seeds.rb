puts "destroy record"
User.destroy_all
Movie.destroy_all
Rental.destroy_all

puts "creando primer usuario"
User.create!(first_name: "Aaron", last_name: "Deik", phone_number: "1341234", address: "sfsafsf", email: "aaron@gmail.com", password: "123456")
puts "creando segundo usuario"
User.create!(first_name: "Matias", last_name: "Avaca", phone_number: "123331", address: "sfsafsf", email: "matias@gmail.com", password: "123456")
puts "creando tercer usuario"
User.create!(first_name: "Cecilia", last_name: "Reynoso", phone_number: "124431331", address: "sfsafsf", email: "cecilia@gmail.com", password: "123456")

puts "creando cuarto usuario"
User.create!(first_name: "Lorenzo", last_name: "Figueroa", phone_number: "1231331", address: "sfsafsf", email: "lorenzo@gmail.com", password: "123456")


Movie.create!(user_id: 1, title: "Harry Potter", price: 5, genre: "Fantastico", synopsis: "Harry Potter has lived under the stairs at his aunt and uncle's house his whole life. But on his 11th birthday, he learns he's a powerful wizard—with a place waiting for him at the Hogwarts School of Witchcraft and Wizardry. As he learns to harness his newfound powers with the help of the school's kindly headmaster, Harry uncovers the truth about his parents' deaths—and about the villain who's to blame.", poster_url: "https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2021/01/harry-potter-1.jpg?fit=2500%2C1576&quality=50&strip=all&ssl=1", director: "Chris Columbus",year: 2001)
Movie.create!(user_id: 1, title: "Rocky", price: 5, genre: "Drama", synopsis: "An uneducated collector for a Philadelphia loan shark is given a once-in-a-lifetime opportunity to fight against the world heavyweight boxing champion.", poster_url: "https://www.themoviedb.org/t/p/original/hEjK9A9BkNXejFW4tfacVAEHtkn.jpg", director: "John G. Avildsen",year: 1976)
Movie.create!(user_id: 2, title: "Breathless", price: 5, genre: "Drama", synopsis: "Everything is cinema! Godard’s impossibly cool debut revamps the thrills of the gangster film, like shootouts and police chases, with chic, anarchic, and ironic attitude. A hip, free-form tour through Paris, love, and film itself that announced there were no rules—and it was just the beginning.", poster_url: "https://assets.mubicdn.net/images/film/268/image-w1280.jpg?1578600036", director: "JEAN-LUC GODARD",year: 1960)
 Movie.create!(user_id: 2, title: "Tarzan", price: 5, genre: "Aventura", synopsis: "La gorila Kala encuentra un niño huérfano en la jungla y lo adopta como su propio hijo a pesar de la oposición de Kerchak, el jefe de la manada. El joven Tarzán crecerá en la jungla desarrollando los instintos de los animales y aprendiendo a deslizarse por los árboles a una gran velocidad. El joven vive como un animal hasta que una expedición se adentra en la jungla y conoce a Jane, que le hará descubrir quién es realmente y cuál es el mundo al que pertenece.", poster_url: "https://rallymundial.net/wp-content/uploads/2020/06/Tarzan-finalmente-esta-transmitiendo-en-Disney.jpgquality90stripallw1200.jpeg", director: "Kevin Lima",year: 1999)
 Movie.create!(user_id: 3, title: "ROCCO AND HIS BROTHERS", price: 5, genre: "Drama", synopsis: "Joining the exodus of millions from Italy’s impoverished south, a matriarch and her sons move to Milan in search of a better life in the industrial north. But, as they inch up the social ladder, family bonds are shredded, and saintly Rocco’s love for a sex worker drives his brutish brother to crime.", poster_url: "https://filasiete.com/wp-content/uploads/2016/01/roccoyhermanos1.jpg", director: "Luchino Visconti",year: 1960)
Movie.create!(user_id: 3, title: "Philadelphia", price: 5, genre: "Drama", synopsis: "Two competing lawyers join forces to sue a prestigious law firm for AIDS discrimination. As their unlikely friendship develops their courage overcomes the prejudice and corruption of their powerful adversaries.", poster_url: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/tFe5Yoo5zT495okA49bq1vPPkiV.jpg", director: "Jonathan Demme",year: 1993)
Movie.create!(user_id: 4, title: "2001: A SPACE ODYSSEY", price: 5, genre: "Sci-Fi", synopsis: "A mysterious black monolith encountered by our prehistoric past leaps millennia and connects to a future of colonised space. Where astronaut Bowman is about to explore uncharted territory. A poetic meditation on technology and humanity adapted from a story by the revered Arthur C. Clarke", poster_url: "https://i0.wp.com/www.raptisrarebooks.com/images/88802/2001-a-space-odyssey-arthur-c-clarke-first-edition-signed-rare-book.jpg?fit=1000%2C800&ssl=1", director: "Stanley Kubrick",year: 1968)

Rental.create!(movie_id:1, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:2)
Rental.create!(movie_id:2, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:2)
Rental.create!(movie_id:3, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:1)
Rental.create!(movie_id:4, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:1)
Rental.create!(movie_id:5, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:2)
Rental.create!(movie_id:6, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:4)
Rental.create!(movie_id:7, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:3)
Rental.create!(movie_id:4, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:4)
Rental.create!(movie_id:1, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:3)
Rental.create!(movie_id:6, rent_date:"2-2-2023", return_date:"7-2-2023", user_id:4)
