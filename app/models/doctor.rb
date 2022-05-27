class Doctor < ApplicationRecord
  has_secure_password
  self.table_name = "doctor"
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, uniqueness: true, :presence => true
  validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
  belongs_to :role
end
