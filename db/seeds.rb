# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(username: "Roy", password: "password")
User.create(username: "Tonny", password: "password1")
User.create(username: "Ray", password: "password2")
User.create(username: "Erick", password: "password3")

Category.create(title: "House Items", language: "English", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "table",orglanguage:"English", input: "mesa", tarlanguage: "Spanish", category_id: 1, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFNCcCJsZCCnSHmA3MvIwmxgjGymfeXoMmW2O5JizWpxsWqQd" )
Image.create(original: "lamp",orglanguage:"English", input: "Lampara", tarlanguage: "Spanish", category_id: 1, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB3LA7kK3o5EGvUOJmBQLS7PHoVBQM89Y21TQyr7CuEFAboMYJ" )
Image.create(original: "bed",orglanguage:"English", input: "cama", tarlanguage: "Spanish", category_id: 1, url:"https://www.ikea.com/PIAimages/0638591_PE699025_S5.JPG" )
Image.create(original: "side bed table",orglanguage:"English", input: "mesa de cama", tarlanguage: "Spanish", category_id: 1, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_BftEaoKzjt9Y_vq9mwe5VqAbLPH7ScYgqZveIKVfZudrUy1I")
Image.create(original: "sofa",orglanguage:"English", input: "sofa", tarlanguage: "Spanish", category_id: 1, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0E85p07ArvArLE7z8F9oaJAD_lFc5oFFTHDX4Jlk4VR3rpnj6")   
Image.create(original: "mirror",orglanguage:"English", input: "espejo", tarlanguage: "Spanish", category_id: 1, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTqVKWZWdnOwT1sE0yYbptw0TPR9CdO3wcMQIqDkLhpZ0dqQni" )

Category.create(title: "Animals", language: "English", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "cat",orglanguage:"English",input: "gato", tarlanguage:"Spanish", category_id:2 , url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4E--6yCq8vJwcGxfWGTG_qIUdAtwabaPKRhQl1qNb0cRgqD1f")
Image.create(original: "dog",orglanguage:"English",input: "perro", tarlanguage:"Spanish", category_id:2 , url:"https://bucket1.glanacion.com/anexos/fotos/02/2749002w380.jpg")

Category.create(title: "House Items", language: "English", user_id: 2, url: "https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "table",orglanguage:"English",input: "mesa", tarlanguage: "Spanish", category_id: 3, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFNCcCJsZCCnSHmA3MvIwmxgjGymfeXoMmW2O5JizWpxsWqQd" )
Image.create(original: "lamp",orglanguage:"English",input: "Lampara", tarlanguage: "Spanish", category_id: 3, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB3LA7kK3o5EGvUOJmBQLS7PHoVBQM89Y21TQyr7CuEFAboMYJ" )
Image.create(original: "bed",orglanguage:"English",input: "cama", tarlanguage: "Spanish", category_id: 3, url:"https://www.ikea.com/PIAimages/0638591_PE699025_S5.JPG" )
Image.create(original: "side bed table",orglanguage:"English",input: "mesa de cama", tarlanguage: "Spanish", category_id: 3, url:"https://images-na.ssl-images-amazon.com/images/I/81s0E8ONQGL._SX425_.jpg" )
Image.create(original: "sofa",orglanguage:"English",input: "sofa", tarlanguage: "Spanish", category_id: 3, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0E85p07ArvArLE7z8F9oaJAD_lFc5oFFTHDX4Jlk4VR3rpnj6") 
Image.create(original: "mirror",orglanguage:"English",input: "espejo", tarlanguage: "Spanish", category_id: 3, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTqVKWZWdnOwT1sE0yYbptw0TPR9CdO3wcMQIqDkLhpZ0dqQni")

Category.create(title: "Animals", language: "English", user_id: 2, url: "https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "cat",orglanguage:"English",input: "gato", tarlanguage:"Spanish", category_id:4, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4E--6yCq8vJwcGxfWGTG_qIUdAtwabaPKRhQl1qNb0cRgqD1f" )
Image.create(original: "dog",orglanguage:"English",input: "perro", tarlanguage:"Spanish", category_id:4 , url:"https://bucket1.glanacion.com/anexos/fotos/02/2749002w380.jpg")

Category.create(title: "House Items", language: "English", user_id: 3, url: "https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "table",orglanguage:"English",input: "mesa", tarlanguage: "Spanish", category_id: 5, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFNCcCJsZCCnSHmA3MvIwmxgjGymfeXoMmW2O5JizWpxsWqQd" )
Image.create(original: "lamp",orglanguage:"English",input: "Lampara", tarlanguage: "Spanish", category_id: 5, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB3LA7kK3o5EGvUOJmBQLS7PHoVBQM89Y21TQyr7CuEFAboMYJ" )
Image.create(original: "bed",orglanguage:"English",input: "cama", tarlanguage: "Spanish", category_id: 5, url:"https://www.ikea.com/PIAimages/0638591_PE699025_S5.JPG" )
Image.create(original: "side bed table",orglanguage:"English",input: "mesa de cama", tarlanguage: "Spanish", category_id: 5, url:"https://images-na.ssl-images-amazon.com/images/I/81s0E8ONQGL._SX425_.jpg" )
Image.create(original: "sofa",orglanguage:"English",input: "sofa", tarlanguage: "Spanish", category_id: 5, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0E85p07ArvArLE7z8F9oaJAD_lFc5oFFTHDX4Jlk4VR3rpnj6") 
Image.create(original: "mirror",orglanguage:"English",input: "espejo", tarlanguage: "Spanish", category_id: 5, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTqVKWZWdnOwT1sE0yYbptw0TPR9CdO3wcMQIqDkLhpZ0dqQni" )

Category.create(title: "Animals", language: "English", user_id: 3, url: "https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "cat",orglanguage:"English",input: "gato", tarlanguage:"Spanish", category_id:6 , url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4E--6yCq8vJwcGxfWGTG_qIUdAtwabaPKRhQl1qNb0cRgqD1f" )
Image.create(original: "dog",orglanguage:"English",input: "perro", tarlanguage:"Spanish", category_id:6 , url:"https://bucket1.glanacion.com/anexos/fotos/02/2749002w380.jpg")

Category.create(title: "House Items", language: "English", user_id: 4, url: "https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "table",orglanguage:"English",input: "mesa", tarlanguage: "Spanish", category_id: 7, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsFNCcCJsZCCnSHmA3MvIwmxgjGymfeXoMmW2O5JizWpxsWqQd" )
Image.create(original: "lamp",orglanguage:"English",input: "Lampara", tarlanguage: "Spanish", category_id: 7, url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB3LA7kK3o5EGvUOJmBQLS7PHoVBQM89Y21TQyr7CuEFAboMYJ" )
Image.create(original: "bed",orglanguage:"English",input: "cama", tarlanguage: "Spanish", category_id: 7, url:"https://www.ikea.com/PIAimages/0638591_PE699025_S5.JPG" )
Image.create(original: "side bed table",orglanguage:"English",input: "mesa de cama", tarlanguage: "Spanish", category_id: 7, url:"https://images-na.ssl-images-amazon.com/images/I/81s0E8ONQGL._SX425_.jpg" )
Image.create(original: "sofa",orglanguage:"English",input: "sofa", tarlanguage: "Spanish", category_id: 7, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0E85p07ArvArLE7z8F9oaJAD_lFc5oFFTHDX4Jlk4VR3rpnj6")
Image.create(original: "mirror", orglanguage: "English", input: "espejo", tarlanguage: "Spanish", category_id: 7, url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTqVKWZWdnOwT1sE0yYbptw0TPR9CdO3wcMQIqDkLhpZ0dqQni")

Category.create(title: "Animals", language: "English", user_id: 4, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Image.create(original: "cat",orglanguage:"English",input: "gato", tarlanguage:"Spanish", category_id:8 , url:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4E--6yCq8vJwcGxfWGTG_qIUdAtwabaPKRhQl1qNb0cRgqD1f" )
Image.create(original: "dog",orglanguage:"English",input: "perro", tarlanguage:"Spanish", category_id:8 , url:"https://bucket1.glanacion.com/anexos/fotos/02/2749002w380.jpg")
