class CreateCarrerasUnidades < ActiveRecord::Migration
  def change
    create_table :carreras_unidades, id: false do |t|
    	t.belongs_to :carrera
      	t.belongs_to :unidad
    end
  end
end
