json.extract! flight, :id, :to_airport_id, :from_airport_id, :date, :time, :created_at, :updated_at
json.url flight_url(flight, format: :json)
