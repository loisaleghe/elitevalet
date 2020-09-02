json.extract! vehicle, :id, :licence_plate, :colour, :make, :model, :year, :created_at, :updated_at
json.url vehicle_url(vehicle, format: :json)
