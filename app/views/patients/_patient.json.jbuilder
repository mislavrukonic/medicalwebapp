json.extract! patient, :id, :name, :email, :DoB, :address, :phone, :role_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
