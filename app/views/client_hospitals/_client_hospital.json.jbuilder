json.extract! client_hospital, :id, :doctor_id, :patient_id, :created_at, :updated_at
json.url client_hospital_url(client_hospital, format: :json)
