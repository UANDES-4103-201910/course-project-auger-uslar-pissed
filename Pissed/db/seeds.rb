# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
zone1 = Zone.create(name: "Norte")

zone2 = Zone.create(name: "Sur")

zone3 = Zone.create(name: "Este")

zone4 = Zone.create(name: "Oeste")

user1 = User.create(user_type: "SuperAdmin",name:"Jaime",lastname:"Auger",email:"jiauger@miuandes.com", password:"jaime7777",password_confirmation: "jaime7777",picture: "/appimages/auger.jpg",
                    bio:"soy jaime y me gusta sacarle los sticker a las bebidas de guarana", gps_location: 1,city:"santiago",country:"Chile",
                    in_blacklist: false, suspended:false,previously_suspension:0,zone_id: zone1.id)

user2 = User.create(user_type: "SuperAdmin" ,name:"Cristobal",lastname:"Uslar",email:"cuslar@miuandes.com",password:"uslar2121", password_confirmation: "uslar2121",picture: "/appimages/God.jpg",
            bio:"soy uslar y y me gusta one piece, los paseos largos por la playa y las puestas de sol", gps_location: 1,city:"santiago",country:"Chile",
            in_blacklist: false,suspended:false,previously_suspension:0,zone_id: zone1.id)

post1 = Post.create(title:"Negligencia",description:"Fui mal atendido y mucho tiempo de espera en el registro civil, pesimo servicio ",
            up_vote_amount:0,down_vote_amount: 0,date: DateTime.now,city: "Santiago",country: "Chile",gps_location: 1,
            image: "/appimages/edificio.jpeg" ,file_atachment: "", open:true,solved: false,innapropiated_count:0,in_dumpster: false,
            is_hidden: false,user_id: user1.id,zone_id: zone1.id)

post2 = Post.create(title:"Agujero",description:"Hay un hoyo en el pavimento con el que continuamente se golpean los autos, no se ha dicho nada de un posible arreglo",
            up_vote_amount:0,down_vote_amount: 0,date: DateTime.now, city: "Santiago",country: "Chile",gps_location: 1,
            image: "/appimages/edificio.jpeg", file_atachment: "", open:true, solved: false, innapropiated_count:0, in_dumpster: true,
            is_hidden: false,user_id: user2.id,zone_id: zone1.id)

post3 = Post.create(title:"Alegato",description:"Existe negligencia en el servicio al consumidor en el local Jumbo ubicado en Francisco Bilbao",
                    up_vote_amount: 0,down_vote_amount: 0,date: DateTime.now, city: "Santiago",country: "Chile",gps_location: 1,
                    image: "/appimages/edificio.jpeg",file_atachment: "", open:true, solved: false, innapropiated_count:0, in_dumpster: false,
                    is_hidden: false,user_id: user2.id,zone_id: zone1.id)

comment1= Comment.create(description: "Oh such a great post", up_vote_amount: 0, down_vote_amount: 0, user: user1, post: post1, comment:nil)

comment2= Comment.create(description: "Oh such a terrible situation", up_vote_amount: 0, down_vote_amount: 0, user: user1, post: post1, comment:nil)

comment3= Comment.create(description: "Oh thats a big problem", up_vote_amount: 0, down_vote_amount: 0, user: user2, post: post3, comment:nil)

comment4= Comment.create(description: "I was going to write the same thing", up_vote_amount: 0, down_vote_amount: 0, user: user2, post: post3, comment:nil)