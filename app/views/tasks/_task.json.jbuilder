json.extract! task, :id, :name, :type, :due_day, :due_month, :due_year, :comments, :created_at, :updated_at
json.url task_url(task, format: :json)
