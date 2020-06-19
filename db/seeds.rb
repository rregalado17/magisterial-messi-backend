# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'securerandom'
 
Team.delete_all
Player.delete_all
 
team_name = [
  'Barcelona FC',
  'Real Madrid',
  'Liverpool',
  'PSG',
  'Manchester United',
  'Manchester City',
  'Juventus',
  'Atletico Madrid',
  'Inter Milan'
]
 
team_collection = []
 
team_name.each do |name|
  team_collection << Team.create(name: name)
end
 
team_collection.each do |team|
  t_size = (SecureRandom.random_number(5) + 1).floor
 
  (1..t_size).each do |t|
    name = Faker::Name.first_name
    Player.create(name: name, team_id: team.id)
  end
end