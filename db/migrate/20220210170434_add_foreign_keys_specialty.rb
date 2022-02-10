
#classe pour rajouter la clé étrangère de lien entre une spécialité pour plusieurs docteurs

class AddForeignKeysSpecialty < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :specialty, foreign_key: true
  end
end
