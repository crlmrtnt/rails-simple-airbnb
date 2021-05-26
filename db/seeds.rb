# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating flats...'

london = { name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
}

paris = { name: 'Beautiful flat on MontMartre',
  address: 'MontMartre, Paris',
  description: 'A lovely winter.Two double bedrooms, 12 living rooms',
  price_per_night: 300,
  number_of_guests: 7
}

berlin = { name: 'Techno unz unz',
  address: 'Berghain, Berlin',
  description: 'Nice, respectful neighbourhood',
  price_per_night: 175,
  number_of_guests: 18
}

phnom_penh = { name: 'View over the Mekong',
  address: '51 Pasteur Street, Phnom Penh',
  description: 'Lowkey sweet',
  price_per_night: 37,
  number_of_guests: 4
}

[london, berlin, paris, phnom_penh].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'

