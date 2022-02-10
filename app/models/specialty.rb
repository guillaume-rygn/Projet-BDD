
#création de la classe spécialité
#une spécialité à plusieurs docteurs

class Specialty < ApplicationRecord
  has_many :doctors
end
