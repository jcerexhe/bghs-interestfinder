json.array!(@events) do |event|
  json.extract! event, :id, :interest_group_id, :name, :time, :date, :description, :location
  json.url event_url(event, format: :json)
end
