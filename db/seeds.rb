# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Dog.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogs'")
Dogsitter.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogsitters'")
Stroll.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'strolls'")
City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")


City.create(city_name: "Tokyo")
City.create(city_name: "Osaka")
City.create(city_name: "Kyoto")
City.create(city_name: "Nagoya")
City.create(city_name: "Yokohama")
City.create(city_name: "Sapporo")
City.create(city_name: "Kobe")
City.create(city_name: "Sendai")
City.create(city_name: "Nara")
City.create(city_name: "Fukuoka")

10.times do |x|
  Dog.create(race: Faker::Name.first_name, city_id: rand(1..10))
  Dogsitter.create(hooman: Faker::Name.first_name, city_id: rand(1..10))
  Stroll.create(dogsitter_id: rand(1..x), dog_id: rand(1..x))
end