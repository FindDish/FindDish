json.extract! platillo, :id, :establecimiento_id :nombre, :ingrediente, :precio, :created_at, :updated_at
json.url platillo_url(platillo, format: :json)
