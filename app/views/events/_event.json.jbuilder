json.extract! event, :id, :event_date, :location, :total_amount, :event_type_id, :created_at, :updated_at
json.url event_url(event, format: :json)
