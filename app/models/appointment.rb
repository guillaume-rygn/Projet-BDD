
#Création de la jointure Appointment entre patient, ville et city
#un rendez-vous n'a qu'un seul docteur
#un rendez-vous n'a qu'un seul patient
#un rendez-vous n'a qu'une seule ville

class Appointment < ApplicationRecord 
    belongs_to :doctor
    belongs_to :patient
    belongs_to :city
end
