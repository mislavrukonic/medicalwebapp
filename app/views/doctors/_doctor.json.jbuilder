json.extract! doctor, :id, :email, :name, :specialty, :phone, :password, :role_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
