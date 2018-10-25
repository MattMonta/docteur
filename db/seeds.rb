# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do 
	doctors = Doctor.create!(first_name: Faker::Superhero.name, last_name: Faker::Pokemon.name, postal_code: Faker::Address.postcode)
end

10.times do 
	patients = Patient.create!(first_name: Faker::GreekPhilosophers.name, last_name: Faker::LordOfTheRings.character)
end

10.times do 
	appointments = Appointment.create!(date: Faker::Date.forward(23))
end

10.times do 
	specialties = Specialty.create!(specialty_name: Faker::Superhero.power)
end

#Doctor.all.ids.sample

Appointment.all.each do |appointment|
appointment.update(doctor_id: rand(1..10), patient_id: rand(1..10), city_id: rand(1..10))
end

Doctor.all.each do |doc|
doc.update(city_id: rand(1..10), specialty_id: rand(1..10))
end

Patient.all.each do |patient|
patient.update(city_id: rand(1..10))
end
