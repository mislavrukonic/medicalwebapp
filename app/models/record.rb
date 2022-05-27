class Record < ApplicationRecord
  self.table_name = "record"
  validates :doctor_comments, :presence => true
  belongs_to :doctor
  belongs_to :patient
end
