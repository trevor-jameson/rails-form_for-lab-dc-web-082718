# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create({first_name: "Jordan", last_name: "Hudgens"})
Student.create({first_name: "Big", last_name: "Wiggle"})
Student.create({first_name: "Willard", last_name: "Wonken"})
Student.create({first_name: "The", last_name: "Will"})

SchoolClass.create({title: "Magical Numbers", room_number: 112})
SchoolClass.create({title: "Binging with Babbish", room_number: 7})
