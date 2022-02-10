
#création de la table patient
#comprend un prénom
#comprend un nom de famille
#comprend un timestamps

class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
