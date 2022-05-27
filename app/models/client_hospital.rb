class ClientHospital < ApplicationRecord
  self.table_name = "client_hospital"
  belongs_to :doctor
  belongs_to :patient
end
