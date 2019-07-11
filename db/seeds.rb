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

Category.create(title: "House", language: "English", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Office", language: "English", user_id: 2, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Kitchen", language: "English", user_id: 3, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Garaje", language: "Spanish", user_id: 4, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Herramientas", language: "Spanish", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Casa", language: "Spanish", user_id: 4, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")

Category.create(title: "House", language: "English", user_id: 4, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Office", language: "English", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Kitchen", language: "English", user_id: 4, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Garaje", language: "Spanish", user_id: 2, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Herramientas", language: "Spanish", user_id: 3, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Casa", language: "Spanish", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")

Category.create(title: "House", language: "English", user_id: 2, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Office", language: "English", user_id: 3, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Kitchen", language: "English", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Garaje", language: "Spanish", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Herramientas", language: "Spanish", user_id: 4, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")
Category.create(title: "Casa", language: "Spanish", user_id: 1, url:"https://res.cloudinary.com/translateme/image/upload/v1562816903/DefaultPics/hdtr6ein3yq8jcoypg4t.png")


Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 2, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:2 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:4 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:1 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:1, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:3 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:5, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:6, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:6, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:5, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )


Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 6, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:6 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:4 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:4 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:2, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:2 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:5, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:3, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:1, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:1, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )


Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 4, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:5 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:5 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:1 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:2, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:2 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:6, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:3, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:6, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:6, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )

Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 6, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:6 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:4 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:4 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:2, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:2 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:5, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:3, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:1, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:1, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )


Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 7, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:8 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:9 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:10 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:11, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:12 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:12, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:13, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:14, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:15, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )



Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 18, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:17 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:16 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:15 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:11, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:12 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:14, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:12, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:14, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:15, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )



Image.create(input: "Couch", tarlanguage: "Spanish", category_id: 7, url:"https://png2.kisspng.com/sh/844421cab6c5e262428eac300635ff3e/L0KzQYm3UsE1N5l3j5H0aYP2gLBuTfNwfZRtReV4ZnGwcrbrTfNpaZp3Rd5ydnnxd375jB9uNZd6itDydIX1dX76jBZiNWZmUKZvOXO4RoSAhPI5Nmo5SaYDM0G2QYa4WMY3PGI4S6Y5N0WxgLBu/kisspng-couch-sofa-bed-chair-living-room-furniture-sofa-5a84f9c5637db8.9414831315186641334075.png" )
Image.create(input: "Table", tarlanguage:"English", category_id:9 , url:"https://www.freeiconspng.com/uploads/table-png-transparent-image-12.jpg" )
Image.create(input: "Chair", tarlanguage:"English", category_id:8 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-Download-PNG.png" )
Image.create(input: "Chair", tarlanguage:"English", category_id:12 , url:"http://www.pngall.com/wp-content/uploads/2016/04/Chair-PNG-Picture.png" )
Image.create(input: "Marker", tarlanguage:"English", category_id:11, url:"https://sep.yimg.com/ay/yhst-65953260967716/expo-dry-erase-marker-chisel-tip-low-odor-ink-2.png" )
Image.create(input: "Desk", tarlanguage:"English", category_id:15 , url:"http://www.pngall.com/wp-content/uploads/2/Desk-PNG-Clipart.png" )
Image.create(input: "Carro", tarlanguage:"Spanish", category_id:14, url:"https://www.sccpre.cat/mypng/full/143-1438807_contratados-para-levar-carro-de-luxo-para-o.png" )
Image.create(input: "Maritillo", tarlanguage:"Spanish", category_id:12, url:"https://www.bellota.com/var/site/storage/images/_aliases/large/7/1/2/3/33217-1-esl-EU/800213.png" )
Image.create(input: "Cama", tarlanguage:"Spanish", category_id:14, url:"https://marcimex.vteximg.com.br/arquivos/ids/159014-700-700/6062_cama-viviana2P_foto1.jpg?v=636821440914300000" )
Image.create(input: "Casa", tarlanguage:"Spanish", category_id:15, url:"https://candysdirt.com/wp-content/uploads/2019/07/74ac6372b9157edaf38087c1513faf38l-m0xd-w1020_h770_q80.jpg" )

































