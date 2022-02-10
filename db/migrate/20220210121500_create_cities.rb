
#création de la table ville
#comprend un nom
#comprend un timestamps

class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.timestamps
    end
  end
end
