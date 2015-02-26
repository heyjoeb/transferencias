# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.delete_all
user_id = User.create( name: "nombre apellido" )
user_id_two = User.create( name: "nombre2 apellido2", balance: 7000 )
user_id_three = User.create( name: "nombre3 apellido3", balance: 40000 )

Transfer.delete_all
Transfer.create( sender_id:user_id.id , receiver_id:user_id_two.id, amount: 2500)