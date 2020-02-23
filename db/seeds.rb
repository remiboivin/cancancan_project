# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
i = 0
users = []
# 10.times do
  users << User.create( email: "jojo@jojo.fr",
        password: 'jeteste')
  i +=1
# end
Role.find_or_create_by(id: 1, name: "admin")
Role.find_or_create_by(id: 2, name: "manager")
#
users[0].roles << Role.find_by(name: "admin")
# users[3].roles << Role.find_by(name: "manager")
