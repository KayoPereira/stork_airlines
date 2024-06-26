# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

AirlineTicket.destroy_all
Flight.destroy_all
User.destroy_all

# ====================================================================

puts "starting..."
puts "creating users..."

# admin user
admin = User.new(email: "kayo@admin.com", password: "123123")
admin.save!

# client user
client = User.new(email: "joão@client.com", password: "123123")
client.save!


# ====================================================================

puts "creating flights..."

datas_aleatorias = []

7.times do
  agora = DateTime.now

  dias_aleatorios = rand(1..30)

  data_aleatoria = agora + dias_aleatorios

  hora_aleatoria = rand(0..23)

  minuto_aleatorio = rand(0..59)

  data_hora_aleatoria = DateTime.new(data_aleatoria.year, data_aleatoria.month, data_aleatoria.day, hora_aleatoria, minuto_aleatorio)

  datas_aleatorias << data_hora_aleatoria
end

flight_1 = Flight.new(departure: "Recife",
                      arrival: "Rio grande do norte",
                      vacancy: 164,
                      aircraft: "airbus_a320",
                      day_and_hour: datas_aleatorias[0],
                      photo_link: "https://www.praiasdenatal.com.br/wp-content/uploads/2014/08/Natal-RN1.jpg"
                    )
flight_1.save!

flight_2 = Flight.new(departure: "Rio grande do norte",
                      arrival: "Bahia",
                      vacancy: 156,
                      aircraft: "boeing737",
                      day_and_hour: datas_aleatorias[1],
                      photo_link: "https://blog.luckreceptivo.com.br/wp-content/uploads/2016/12/salvador.jpg"
                    )
flight_2.save!

flight_3 = Flight.new(departure: "Bahia",
                      arrival: "Recife",
                      vacancy: 178,
                      aircraft: "boeing777",
                      day_and_hour: datas_aleatorias[2],
                      photo_link: "https://deonibus.com/blog/wp-content/uploads/2021/03/cidade-perto-de-recife.jpg"
                    )
flight_3.save!

flight_4 = Flight.new(departure: "Bahia",
                      arrival: "Rio grande do norte",
                      vacancy: 156,
                      aircraft: "boeing737",
                      day_and_hour: datas_aleatorias[3],
                      photo_link: "https://www.praiasdenatal.com.br/wp-content/uploads/2014/08/Natal-RN1.jpg"
                    )
flight_4.save!

flight_5 = Flight.new(departure: "Rio de Janeiro",
                      arrival: "São Paulo",
                      vacancy: 180,
                      aircraft: "airbus_a330",
                      day_and_hour: datas_aleatorias[4],
                      photo_link: "https://ecrie70.com.br/sistema/conteudos/imagem/g_66_0_1_06062023152401.png"
                    )
flight_5.save!

flight_6 = Flight.new(departure: "São Paulo",
                      arrival: "Recife",
                      vacancy: 203,
                      aircraft: "boeing747",
                      day_and_hour: datas_aleatorias[5],
                      photo_link: "https://deonibus.com/blog/wp-content/uploads/2021/03/cidade-perto-de-recife.jpg"
                    )
flight_6.save!

flight_7 = Flight.new(departure: "Rio de Janeiro",
                      arrival: "Recife",
                      vacancy: 198,
                      aircraft: "boeing747",
                      day_and_hour: datas_aleatorias[6],
                      photo_link: "https://deonibus.com/blog/wp-content/uploads/2021/03/cidade-perto-de-recife.jpg"
                    )
flight_7.save!

# ====================================================================

puts "creating tickets..."

AirlineTicket.create!(price: 1000.00, discount: 10, origin: "azul", ticket_type: "economy", flight: flight_1)
AirlineTicket.create!(price: 1500.00, discount: 10, origin: "azul", ticket_type: "executive", flight: flight_1)
AirlineTicket.create!(price: 2000.00, discount: 10, origin: "azul", ticket_type: "first_class", flight: flight_1)

AirlineTicket.create!(price: 560.00, discount: 10, origin: "gol", ticket_type: "economy", flight: flight_2)
AirlineTicket.create!(price: 1120.00, discount: 10, origin: "gol", ticket_type: "executive", flight: flight_2)
AirlineTicket.create!(price: 1900.00, discount: 10, origin: "gol", ticket_type: "first_class", flight: flight_2)

AirlineTicket.create!(price: 457.00, discount: 10, origin: "latam", ticket_type: "economy", flight: flight_3)
AirlineTicket.create!(price: 990.00, discount: 10, origin: "latam", ticket_type: "executive", flight: flight_3)
AirlineTicket.create!(price: 1537.00, discount: 10, origin: "latam", ticket_type: "first_class", flight: flight_3)

AirlineTicket.create!(price: 560.00, discount: 10, origin: "gol", ticket_type: "economy", flight: flight_4)
AirlineTicket.create!(price: 1120.00, discount: 10, origin: "gol", ticket_type: "executive", flight: flight_4)
AirlineTicket.create!(price: 1900.00, discount: 10, origin: "gol", ticket_type: "first_class", flight: flight_4)

AirlineTicket.create!(price: 299.90, discount: 10, origin: "latam", ticket_type: "economy", flight: flight_5)
AirlineTicket.create!(price: 769.90, discount: 10, origin: "latam", ticket_type: "executive", flight: flight_5)
AirlineTicket.create!(price: 1459.90, discount: 10, origin: "latam", ticket_type: "first_class", flight: flight_5)

AirlineTicket.create!(price: 899.90, discount: 10, origin: "azul", ticket_type: "economy", flight: flight_6)
AirlineTicket.create!(price: 1899.90, discount: 10, origin: "azul", ticket_type: "executive", flight: flight_6)
AirlineTicket.create!(price: 2599.90, discount: 10, origin: "azul", ticket_type: "first_class", flight: flight_6)

AirlineTicket.create!(price: 899.90, discount: 10, origin: "latam", ticket_type: "economy", flight: flight_7)
AirlineTicket.create!(price: 1899.90, discount: 10, origin: "latam", ticket_type: "executive", flight: flight_7)
AirlineTicket.create!(price: 2599.90, discount: 10, origin: "latam", ticket_type: "first_class", flight: flight_7)


# ====================================================================

puts "done!"

# ====================================================================