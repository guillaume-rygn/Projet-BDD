
#une ville à plusieurs docteurs
#une ville à plusieurs patients
#une ville à plusieurs rendez-vous

class City < ApplicationRecord
    has_many :doctors
    has_many :patients
    has_many :appointments
end
