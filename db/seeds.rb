# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all
flats_attributes = [
  {
    name: 'Small House Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'Three double bedrooms. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quas a quis dignissimos velit nulla possimus eligendi molestiae officiis totam iusto optio maiores quia, similique quo expedita ipsum, iure beatae dolor.',
    price_per_night: 185,
    number_of_guests: 6
  },
  {
    name: 'Spacious Flat London',
    address: '9 Harper street London W10 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
    price_per_night: 75,
    number_of_guests: 3
  },
  {
    name: 'Light & Spacious Garden Flat London',
    address: '101 Clapham commons London SW11 1DT',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique quod temporibus porro consequuntur repellat quas nobis quo ull wef uw.',
    price_per_night: 85,
    number_of_guests: 3
  },
  {
    name: 'Flat in Soho London',
    address: '87 Kensington High Street London N1 2PP',
    description: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores in ad veritatis. Illum sint maiores aperiam nulla nostrum, magnam repudia!',
    price_per_night: 100,
    number_of_guests: 4
  },
  {
    name: 'Moderm Flat with Terrasse London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'nesciunt repellat deleniti ratione quia, ipsum error distinctio excepturi dicta expedita hic optio!',
    price_per_night: 110,
    number_of_guests: 4
  }
]
Flat.create!(flats_attributes)
puts 'Finished!'
