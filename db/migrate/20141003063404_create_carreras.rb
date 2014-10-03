class CreateCarreras < ActiveRecord::Migration
  def change
    create_table :carreras do |t|
      t.string :nombre
      t.string :url
      t.text :descripcion

      t.timestamps
    end
  end
end
