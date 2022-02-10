
#changement sur la table docteur --> migration : retirer la colonne specialty 

class RemoveSpecialtyFromDoctorTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :specialty, :string
  end
end
