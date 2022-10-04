# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Airport.destroy_all
Flight.destroy_all

airports = Airport.create! ([
{
  code: "SFO"
},
{
  code: "NYC"
},
{
  code: "ATL"
},
{
  code: "DAL"
}])

p "Created #{Airport.count} airports"


flights = Flight.create! ([
  {
    departure_id: airports.first.id, 
    arrival_id: airports.last.id, 
    departure_time: "2022-10-05 12:00:00", 
    duration: 240
  },
  {
    departure_id: airports.last.id, 
    arrival_id: airports.first.id, 
    departure_time: "2022-10-05 16:00:00", 
    duration: 240
  },
  {
    departure_id: airports.at(2).id, 
    arrival_id: airports.at(3).id, 
    departure_time: "2022-10-05 08:00:00", 
    duration: 100
  },
  {
    departure_id: airports.at(3).id, 
    arrival_id: airports.at(2).id, 
    departure_time: "2022-10-05 20:00:00", 
    duration: 100
  },
  {
    departure_id: airports.at(3).id, 
    arrival_id: airports.first.id, 
    departure_time: "2022-10-05 06:00:00", 
    duration: 300
  },
  {
    departure_id: airports.first.id, 
    arrival_id: airports.at(3).id, 
    departure_time: "2022-10-05 13:00:00", 
    duration: 300
  },
  {
    departure_id: airports.at(3).id, 
    arrival_id: airports.last.id, 
    departure_time: "2022-10-05 14:00:00", 
    duration: 120
  },
  {
    departure_id: airports.last.id, 
    arrival_id: airports.at(3).id, 
    departure_time: "2022-10-05 21:00:00", 
    duration: 120
  },
  {
    departure_id: airports.at(2).id, 
    arrival_id: airports.last.id, 
    departure_time: "2022-10-05 15:00:00", 
    duration: 180
  },
  {
    departure_id: airports.last.id, 
    arrival_id: airports.at(2).id, 
    departure_time: "2022-10-05 19:00:00", 
    duration: 180
  },
  {
    departure_id: airports.at(2).id, 
    arrival_id: airports.first.id, 
    departure_time: "2022-10-05 16:00:00", 
    duration: 280
  },
  {
    departure_id: airports.first.id, 
    arrival_id: airports.at(2).id, 
    departure_time: "2022-10-05 22:00:00", 
    duration: 280
  },
  ])

  p "Created #{Flight.count} flights"
 

