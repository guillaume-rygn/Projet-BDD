
#création de la table spécialité pour les docteurs
#comporte un nom
#comporte une timestamps

class CreateSpecialties < ActiveRecord::Migration[5.2]
  def change
    create_table :specialties do |t|
      t.string :name
      t.timestamps
    end
  end
end
