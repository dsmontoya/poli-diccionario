json.array!(@unidades) do |unidad|
  json.extract! unidad, :id, :nombre, :siglas, :descripcion, :url, :direccion, :telefono, :extension, :email, :web, :escudo, :portada, :secure_token
  json.url unidad_url(unidad, format: :json)
end
