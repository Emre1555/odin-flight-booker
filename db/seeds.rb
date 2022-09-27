# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Airport.destroy_all
Flight.destroy_all

Airport.create([
    {name: "Boston Logan", code: "BOS"}, 
    {name: "Amsterdam Schiphol", code: "AMS"},
    {name: "Henri Coandă International", code: "OTP"},
    {name: "Sabiha Gökçen International", code: "SAW"}])


Flight.create([
    {departure_airport_id: Airport.find_by(code: "BOS").id, arrival_airport_id: Airport.find_by(code: "AMS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "BOS").id, arrival_airport_id: Airport.find_by(code: "OTP").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "BOS").id, arrival_airport_id: Airport.find_by(code: "SAW").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "AMS").id, arrival_airport_id: Airport.find_by(code: "BOS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "OTP").id, arrival_airport_id: Airport.find_by(code: "BOS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "SAW").id, arrival_airport_id: Airport.find_by(code: "BOS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "AMS").id, arrival_airport_id: Airport.find_by(code: "OTP").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "OTP").id, arrival_airport_id: Airport.find_by(code: "AMS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "AMS").id, arrival_airport_id: Airport.find_by(code: "SAW").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "SAW").id, arrival_airport_id: Airport.find_by(code: "AMS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "OTP").id, arrival_airport_id: Airport.find_by(code: "SAW").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "SAW").id, arrival_airport_id: Airport.find_by(code: "OTP").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "03:00:00"},
    {departure_airport_id: Airport.find_by(code: "BOS").id, arrival_airport_id: Airport.find_by(code: "AMS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "BOS").id, arrival_airport_id: Airport.find_by(code: "OTP").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "BOS").id, arrival_airport_id: Airport.find_by(code: "SAW").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "AMS").id, arrival_airport_id: Airport.find_by(code: "BOS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "OTP").id, arrival_airport_id: Airport.find_by(code: "BOS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "SAW").id, arrival_airport_id: Airport.find_by(code: "BOS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "AMS").id, arrival_airport_id: Airport.find_by(code: "OTP").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "OTP").id, arrival_airport_id: Airport.find_by(code: "AMS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "AMS").id, arrival_airport_id: Airport.find_by(code: "SAW").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "SAW").id, arrival_airport_id: Airport.find_by(code: "AMS").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "OTP").id, arrival_airport_id: Airport.find_by(code: "SAW").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"},
    {departure_airport_id: Airport.find_by(code: "SAW").id, arrival_airport_id: Airport.find_by(code: "OTP").id, date: "2023-01-01 12:00:00", flight_duration: 360, time: "12:00:00"}])