# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#Museums
boston_mfa = Museum.create(name: "Boston Museum of Fine Arts", city: "Boston", street_address: "465 Huntington Ave", state: "MA", zip_code: "02115", type: "Art Museum")
met = Museum.create(name: "Metropolitan Museum of Art", city: "New York", street_address: "1000 5th Ave", state: "NY", zip_code: "10028", type: "Art Museum")
am_nh = Museum.create(name: "American Museum of Natural History", city: "New York", street_address: "Central Park West & 79th St", state: "NY", zip_code: "10024", type: "Natural History & Science")
m_sci = Museum.create(name: "Museum of Science & Industry", city: "Chicago", street_address: "5700 S Lake Shore Dr", state: "IL", zip_code: "60637", type: "Science & Technology")
holocaust = Museum.create(name: "United States Holocaust Memorial Museum", city: "Washington DC", street_address: "100 Raoul Wallenberg Pl SW", state: "WA DC", zip_code: "20024", type: "History Museum")
getty = Museum.create(name: "J. Paul Getty Museum", city: "Los Angeles", street_address: "1200 Getty Center Dr", state: "CA", zip_code: "90049", type: "Art Museum")
r_r_hoff = Museum.create(name: "Rock and Roll Hall of Fame", city: "Cleveland", street_address: "1100 E 9th St", state: "OH", zip_code: "44114", type: "History Museum")
exploratorium = Museum.create(name: "Exploratorium", city: "San Francisco", street_address: "Pier 15 The Embarcadero", state: "CA", zip_code: "94111", type: "Science & Technology")
mutter = Museum.create(name: "Mutter Museum", city: "Philadelphia", street_address: "19 22nd St", state: "PA", zip_code: "19103", type: "Natural History & Science")
dali = Museum.create(name: "Salvador Dali Museum", city: "St. Petersburg", street_address: "1 Dali Blvd", state: "FL", zip_code: "33701", type: "Art Museum")


#Users

#Reviews
