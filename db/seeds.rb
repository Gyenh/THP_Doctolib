# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#crée 10 patients
10.times do
 Patient.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name)
end

#crée 5 docteurs
5.times do
  Doctor.create(first_name: Faker::Name.first_name,
                last_name: Faker::Name.last_name,
                specialty: Faker::Pokemon.name,
                postal_code: Faker::Address.zip)
end

#crée 15 commentaires et 15 likes
15.times do
  Appoitment.create(date: Faker::Date.forward(30),
                    patient_id: rand((Patient.first.id)..(Patient.last.id)),
                    doctor_id: rand((Doctor.first.id)..(Doctor.last.id)))
end
