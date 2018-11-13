require 'faker'
include Faker

User.destroy_all
Museum.destroy_all
Review.destroy_all

100.times do
  User.create(
    username: Faker::Internet.email,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    age: Faker::Number.number(2),
    email: Faker::Internet.email
  )
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Museum Types
general = MuseumType.create(name: "General Museum")
natural = MuseumType.create(name: "Natural History & Science Museum")
tech = MuseumType.create(name: "Science & Technology Museum")
history = MuseumType.create(name: "History Museum")
art = MuseumType.create(name: "Art Museum")

#Museums
boston_mfa = Museum.create(name: "Boston Museum of Fine Arts", city: "Boston", street_address: "465 Huntington Ave", state: "MA", zip_code: "02115", museum_type_id: art.id)

am_nh = Museum.create(name: "American Museum of Natural History", city: "New York", street_address: "Central Park West & 79th St", state: "NY", zip_code: "10024", museum_type_id: natural.id)

m_sci = Museum.create(name: "Museum of Science & Industry", city: "Chicago", street_address: "5700 S Lake Shore Dr", state: "IL", zip_code: "60637", museum_type_id: tech.id)

holocaust = Museum.create(name: "United States Holocaust Memorial Museum", city: "Washington DC", street_address: "100 Raoul Wallenberg Pl SW", state: "WA DC", zip_code: "20024", museum_type_id: history.id)

getty = Museum.create(name: "J. Paul Getty Museum", city: "Los Angeles", street_address: "1200 Getty Center Dr", state: "CA", zip_code: "90049", museum_type_id: art.id)

r_r_hoff = Museum.create(name: "Rock and Roll Hall of Fame", city: "Cleveland", street_address: "1100 E 9th St", state: "OH", zip_code: "44114", museum_type_id: history.id)

exploratorium = Museum.create(name: "Exploratorium", city: "San Francisco", street_address: "Pier 15 The Embarcadero", state: "CA", zip_code: "94111", museum_type_id: tech.id)

mutter = Museum.create(name: "Mutter Museum", city: "Philadelphia", street_address: "19 22nd St", state: "PA", zip_code: "19103", museum_type_id: natural.id)

dali = Museum.create(name: "Salvador Dali Museum", city: "St. Petersburg", street_address: "1 Dali Blvd", state: "FL", zip_code: "33701", museum_type_id: art.id)

met = Museum.create(name: "Metropolitan Museum of Art", city: "New York", street_address: "1000 5th Ave", state: "NY", zip_code: "10028", museum_type_id: art.id)

#User Types
explorer = UserType.create(name: "Explorer")
facilitator = UserType.create(name: "Facilitator")
prof = UserType.create(name: "Professional/Hobbyist")
recharger = UserType.create(name: "Recharger")
experience = UserType.create(name: "Experience Seeker")

#Reviews
r1 = Review.create(museum_id: met.id, user_id: User.all[0].id, title: "Great!", rating: 4, review: "Loved everything about this place except for the museum cafe", user_type_id: explorer.id)
r2 = Review.create(museum_id: exploratorium.id, user_id: User.all[1].id, title: "Awful!", rating: 1, review: "Terrible experience - don't go!", user_type_id: recharger.id)
r3 = Review.create(museum_id: r_r_hoff.id, user_id: User.all[3].id, title: "Eh", rating: 2, review: "So-so experience", user_type_id: facilitator.id)
