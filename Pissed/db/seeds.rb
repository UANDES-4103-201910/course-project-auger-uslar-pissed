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

usuario1 = User.create(user_type: "SuperAdmin",name:"Jaime",lastname:"Auger",email_address:"jiauger@miuandes.com", password:"jaime7777",picture: "/appimages/auger.jpg",
                       bio:"soy jaime y me gusta sacarle los sticker a las bebidas de guarana", gps_location: 2,city:"santiago",country:"Chile",
                       in_blacklist: false, suspended:false,previously_suspension:0,zone_id: zone1.id)

usuario2 = User.create(user_type: "SuperAdmin" ,name:"Cristobal",lastname:"Uslar",email_address:"cuslar@miuandes.com",password:"uslar2121",picture: "/appimages/God.jpg",
            bio:"soy uslar y y me gusta one piece, los paseos largos por la playa y las puestas de sol", gps_location: 2,city:"santiago",country:"Chile",
            in_blacklist: false,suspended:false,previously_suspension:0,zone_id: zone1.id)

post1 = Post.create(title:"Negligencia",description:"Fui mal atendido y mucho tiempo de espera en el registro civil, pesimo servicio ",
            up_vote_amount:2,down_vote_amount: 10,date: DateTime.now,city: "Santiago",country: "Chile",gps_location: 1,
            image: "/appimages/edificio.jpeg" ,file_atachment: "",open:true,solved: false,innapropiated_count:0,in_dumpster: false,
            is_hidden: false,user_id: usuario1.id,zone_id: zone1.id)

post2 = Post.create(title:"Agujero",description:"Hay un hoyo en el pavimento con el que continuamente se golpean los autos, no se ha dicho nada de un posible arreglo",
            up_vote_amount:5,down_vote_amount: 2,date: DateTime.now,city: "Santiago",country: "Chile",gps_location: 1,
            image: "/appimages/edificio.jpeg",file_atachment: "",open:true,solved: false,innapropiated_count:0,in_dumpster: false,
            is_hidden: false,user_id: usuario2.id,zone_id: zone1.id)