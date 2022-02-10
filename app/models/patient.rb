
#Création du modèle Patient
#Un patient à plusieurs rendez-vous
#Un patient à plusieurs docteurs à travers rendez-vous
#Un patient est dans une ville

class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  belongs_to :city
end
