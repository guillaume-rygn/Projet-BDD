
#Création des clés étrangères pour docteurs, patients et RDV par rapport à ville
#une ville aura plusieurs docteurs
#une ville aura plusieurs patients
#une ville aura plusieurs rendez-vous

class AddForeignKeysCity < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :city, foreign_key: true
    add_reference :patients, :city, foreign_key: true
    add_reference :appointments, :city, foreign_key: true
  end
end
