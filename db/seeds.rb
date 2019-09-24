# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Project.destroy_all
Nail.destroy_all
Polish.destroy_all
Plate.destroy_all
NailPolish.destroy_all
NailPlate.destroy_all

user1 = User.create(username: "admin", password:"qqq")

project1 = Project.create(name: "Simple", user_id: user1.id)
#project2 = Project.create(name: "Second", user_id: user1.id)


left_pinky = Nail.create(name: "left_pinky", project_id: project1.id, texture: "naked.png")
left_ring = Nail.create(name: "left_ring", project_id: project1.id, texture: "naked.png")
left_middle = Nail.create(name: "left_middle", project_id: project1.id, texture: "naked.png")
left_index = Nail.create(name: "left_index", project_id: project1.id, texture: "naked.png")
left_thumb = Nail.create(name: "left_thumb", project_id: project1.id, texture: "naked.png")



plate1 = Plate.create(collection_name: "Trend Hunter Collection", number: 23, img: "trend_hunter_23.png")

polish7 = Polish.create(collection: "Scotland Autumn 2019", name: "A Little Guilt Under the Kilt", red: 158, green: 31, blue: 42)
polish8 = Polish.create(collection: "Scotland Autumn 2019", name: "Suzi Needs a Loch-Smith", red: 195, green: 78, blue: 47)
polish9 = Polish.create(collection: "Scotland Autumn 2019", name: "Rub-a-Pub-Pub", red: 40, green: 41, blue: 52)
polish10 = Polish.create(collection: "Scotland Autumn 2019", name: "Nessie Plays Hide & Sea-k", red: 38, green: 93, blue: 158)
polish11 = Polish.create(collection: "Scotland Autumn 2019", name: "Nice Set of Pipes", red: 43, green: 43, blue: 76)
polish12 = Polish.create(collection: "Scotland Autumn 2019", name: "Things I've Seen in Aber-green", red: 46, green: 55, blue: 57)


polish1 = Polish.create(collection: "Scotland Autumn 2019", name: "Red Heads Ahead", red: 179, green: 50, blue: 59)
polish2 = Polish.create(collection: "Scotland Autumn 2019", name: "OPI Grabs the Unicorn by the Horn", red: 47, green: 114, blue: 143)
polish3 = Polish.create(collection: "Scotland Autumn 2019", name: "Edinburgh-er & Tatties", red: 192, green: 150, blue: 144)
polish4 = Polish.create(collection: "Scotland Autumn 2019", name: "You've Got that Glas-glow", red: 184, green: 151, blue: 159)
polish5 = Polish.create(collection: "Scotland Autumn 2019", name: "Good Girls Gone Plaid", red: 39, green: 27, blue: 36)
polish6 = Polish.create(collection: "Scotland Autumn 2019", name: "Boys Be Thistleing at Me", red: 78, green: 33, blue: 60)



NailPolish.create(nail_id: left_pinky.id, polish_id: polish1.id)

NailPlate.create(nail_id: left_pinky.id, plate_id: plate1.id, design_num: 0)


NailPolish.create(nail_id: left_ring.id, polish_id: polish3.id)
NailPolish.create(nail_id: left_middle.id, polish_id: polish4.id)
NailPolish.create(nail_id: left_index.id, polish_id: polish12.id)
NailPolish.create(nail_id: left_thumb.id, polish_id: polish2.id)


