# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


5.times do |i|
  Player.create( name:"test string for name", dateOfBirth:1.week.ago, height:10, isProfessional:true )
  League.create( name:"test string for name" )
  Tournament.create( name:"test string for name", Type:0 )
  Matchup.create( name:"test string for name" )
  Game.create( frames:100 )
end
