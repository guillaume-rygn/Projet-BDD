
#création de la table de rendez-vous
#comprend une date
#comprend un timestamps

class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
         t.timestamps
    end
  end
end
