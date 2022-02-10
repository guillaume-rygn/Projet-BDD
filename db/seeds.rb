
#Appel la gem faker pour créer des faux profils
require 'faker'

#destroy all data from class
Appointment.destroy_all
Doctor.destroy_all
Patient.destroy_all
City.destroy_all
Specialty.destroy_all

#méthode pour créer 10 villes
10.times do
  cities =  City.create!(
    name: Faker::Address.city,
  );
end

#méthode pour créer 10 spécialités
10.times do
  specialty = Specialty.create!(
    name: ["gynéchologue","radiologue","anesthésite","généraliste","rhumatologue"].sample,
  );
end

#méthode pour créer 10 docteurs
10.times do 
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    zip_code: Faker::Address.zip_code,
    city_id: City.all.sample.id,
    specialty_id: Specialty.all.sample.id
  );
end

#méthode pour créer 10 patients
10.times do 
  patient = Patient.create!(
   first_name: Faker::Name.first_name, last_name: Faker::Name.last_name,
   city_id: City.all.sample.id
  );
end

#méthode pour créer 10 rendez-vous
10.times do
  appointment = Appointment.create!(
    date: Faker::Date.between(from: '2014-05-23', to: '2014-09-25'),
    doctor_id: Doctor.all.sample.id,
    patient_id:Patient.all.sample.id,
    city_id: City.all.sample.id
  );
end

