json.extract! passenger, :id, :checkIn, :name, :aircraft, :destination, :gate, :created_at, :updated_at
json.url passenger_url(passenger, format: :json)
