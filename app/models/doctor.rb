#Création du modèle Doctor
#un docteur à plusieurs rendez-vous
#un docteur à plusieurs patients au travers des rendez-vous
#un docteur est dans une seule ville
#un docteur à une spécialitée

class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  belongs_to :city
  belongs_to :specialty
end