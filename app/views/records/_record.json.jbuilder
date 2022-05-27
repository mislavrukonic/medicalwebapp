json.extract! record, :id, :doctor_comments, :last_accsessed, :doctor_id, :patient_id, :created_at, :updated_at
json.url record_url(record, format: :json)
