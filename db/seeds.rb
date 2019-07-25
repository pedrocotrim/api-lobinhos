# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |x|
  Wolf.create(photo: "https://meusanimais.com.br/wp-content/uploads/2017/12/c%C3%A3o-vem-do-lobo.jpg",
              age: x, name: "lobo#{x}", description: "lobo muito top q ta sozinho coitado adota ele vai")
end

Adoption.create(age: 20, name: "fulano", email: "email@email.com", wolf_id: 1)
Adoption.create(age: 20, name: "fulano", email: "email@email.com", wolf_id: 2)
Adoption.create(age: 20, name: "fulano", email: "email@email.com", wolf_id: 3)