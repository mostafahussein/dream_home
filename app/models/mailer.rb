class Mailer < ActiveRecord::Base
  attr_accessible :company_name, :contact_name, :address, :telephone, :email, :description
  before_save { |mailer| mailer.email = mailer.email.downcase }
  validates :company_name, length: { maximum: 50 }
  validates :contact_name, presence: true, length: { maximum: 40 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
  validates :description, presence: true
end
