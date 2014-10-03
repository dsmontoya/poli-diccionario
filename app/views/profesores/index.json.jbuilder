json.array!(@profesores) do |profesor|
  json.extract! profesor, :id, :nombres, :apellidos, :url, :email, :sexo, :token
  json.url profesor_url(profesor, format: :json)
end
