json.array!(@unidades) do |unidad|
  json.extract! unidad, :id, :nombre, :siglas, :descripcion, :direccion, :telefono, :extension, :email, :web, :escudo, :portada, :token
  json.url unidad_url(unidad, format: :json)
end
