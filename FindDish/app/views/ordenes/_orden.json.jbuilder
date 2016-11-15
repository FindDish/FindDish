json.extract! reserva, :id, :fecha, :hora, :total, :estado  :created_at, :updated_at
json.url reserva_url(reserva, format: :json)
