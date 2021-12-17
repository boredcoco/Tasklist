json.extract! appointment, :id, :name, :date_day, :date_month, :date_year, :start_time, :end_time, :comments, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
