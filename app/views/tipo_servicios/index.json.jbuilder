json.array!(@tipo_servicios) do |tipo_servicio|
  json.extract! tipo_servicio, :id, :nombre, :descripcion
  json.url tipo_servicio_url(tipo_servicio, format: :json)
end
