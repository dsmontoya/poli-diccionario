class CreateUnidades < ActiveRecord::Migration
  def change
    create_table :unidades do |t|
      t.string :nombre
      t.string :siglas
      t.text :descripcion
      t.string :direccion
      t.string :telefono
      t.string :extension
      t.string :email
      t.string :web
      t.string :escudo
      t.string :portada
      t.string :token

      t.timestamps
    end
  end
end
class CreateCarrerasUnidades < ActiveRecord::Migration
  def change
    create_join_table :carreras, :unidades
  end
end
