
#création de la table docteur
#comprend un prénom
#comprend un nom de famille
#comprend un zip code
#comprend un timestamps

class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :zip_code

      t.timestamps
    end
  end
end
