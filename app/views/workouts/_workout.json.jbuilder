json.extract! workout, :id, :title, :desc, :date, :intensity, :user_id, :created_at, :updated_at
json.url workout_url(workout, format: :json)
