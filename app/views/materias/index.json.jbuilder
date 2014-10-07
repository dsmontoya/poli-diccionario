json.array!(@materias) do |materia|
  json.extract! materia, :id, :nombre, :descripcion
  json.url materia_url(materia, format: :json)
end
