# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "Roy")
User.create(name: "Tonny")
User.create(name: "Ray")
User.create(name: "Erick")

Category.create(title: "House", language: "English", user_id: 1)
Category.create(title: "Office", language: "English", user_id: 2)
Category.create(title: "Kitchen", language: "English", user_id: 3)
Category.create(title: "Garaje", language: "Spanish", user_id: 4)
Category.create(title: "Herramientas", language: "Spanish", user_id: 1)
Category.create(title: "Casa", language: "Spanish", user_id: 4)


Image.create(input: "Couch", og_language:"English", output: "Sofa",tr_language: "Spanish", category_id:1)
Image.create(input: "Table", og_language:"English", output: "Mesa",tr_language: "Spanish", category_id:1 )
Image.create(input: "Chair", og_language:"English", output: "Silla",tr_language: "Spanish", category_id:3 )
Image.create(input: "Chair", og_language:"English", output: "Silla",tr_language: "Spanish", category_id:2 )
Image.create(input: "Marker", og_language:"English", output: "Marcador",tr_language: "Spanish", category_id:2)
Image.create(input: "Desk", og_language:"English", output: "Escritorio",tr_language: "Spanish", category_id:2 )
Image.create(input: "Carro", og_language:"Spanish", output: "Car",tr_language: "English", category_id:4)
Image.create(input: "Maritillo", og_language:"Spanish", output: "Hammer",tr_language: "Englih", category_id:5)
Image.create(input: "Cama", og_language:"Spanish", output: "Bed",tr_language: "Englsh", category_id:6)
Image.create(input: "Casa", og_language:"Spanish", output: "House",tr_language: "Englsh", category_id:6)





























