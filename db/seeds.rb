# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'
20.times do 
    city = City.create!(
        name: Faker::Nation.capital_city)
    end


20.times do 
    doctor = Doctor.create!(
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name,
        zip_code: Faker::Address.zip_code,
        city_id: City.all.sample.id
    )



end

20.times do 
    patient = Patient.create!(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city_id: City.all.sample.id
    )
        
    
end

20.times do 
    specialty = Speciality.create!(name: Faker::Job.title)
end


20.times do 
    appointment = Appointment.create!(
    date: Faker::Date.forward(days: 31),
    doctor: Doctor.all.sample,
    patient: Patient.all.sample,
    city_id: City.all.sample.id
)


end
