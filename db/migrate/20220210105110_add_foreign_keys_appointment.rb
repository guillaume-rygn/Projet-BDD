
#création de la clé étrangère entre rendez-vous et docteur
#création de la clé étrangère entre rendez-vous et patient

class AddForeignKeysAppointment < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end
end
