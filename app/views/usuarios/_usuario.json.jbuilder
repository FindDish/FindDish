json.extract! usuario, :id, :nombre, :apellido, :cedula, :numero, :email, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)