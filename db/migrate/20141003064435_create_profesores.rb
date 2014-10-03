class CreateProfesores < ActiveRecord::Migration
  def change
    create_table :profesores do |t|
      t.string :nombres
      t.string :apellidos
      t.string :url
      t.string :email
      t.integer :sexo
      t.string :token

      t.timestamps
    end
  end
end
