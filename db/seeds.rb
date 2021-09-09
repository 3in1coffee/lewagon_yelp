# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
kimly = { name: "Kimly Zi Char (Pasir Ris East)", address: "Blk 444 Pasir Ris Drive 6 #01-102, 510444 Singapore", phone_number: "", category: "chinese" }
earle =  { name: "Earle Swensen's (Jewel)", address: "78 Airport Blvd, #03 - 219, 819666 Singapore", phone_number: "", category: "italian" }
jh = { name: "JH Japanese Cuisine", address: "2 Simei St 3 #01-30/31 Changi General Hospital Medical Centre S529889, 529889 Singapore", phone_number: "", category: "japanese" }
merci = { name: "Merci Marcel (Tanjong Pagar)", address: "7-9 Club Street, 069403 Singapore", phone_number: "", category: "french" }
coconut = { name: "Co+Nut+Ink- E Avenue@Downtown East", address: "E!Avenue #02-K12, beside the level 2 Taxi Stand / Pick Up & Drop Off Point, 238852 Singapore", phone_number: "", category: "belgian" }

[ kimly, earle, jh, merci, coconut ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
