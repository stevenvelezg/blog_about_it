# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  {fname: 'Cam', lname: 'Crews', email: 'cam@nycda.com', password: 'test'},
  {fname: 'Logan', lname: 'Baker', email: 'floridian@fl.com', password: 'test'},
  {fname: 'Nick', lname: 'Fehlinger', email: 'nick@nick.com', password: 'test'}
])

Post.create([
  {user_id: 2, title: 'Florida is the best', body: 'I\'m having the best time down on the Gulf Coast.  Hope you\'re enjoying the heat of New York!'}
])
