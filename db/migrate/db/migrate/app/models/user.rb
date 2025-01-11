class User < ApplicationRecord
  has_secure_password
  has_many :ratings, dependent: :destroy

  validates :name, length: { in: 20..60 }
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { in: 8..16 }, format: { with: /(?=.*[A-Z])(?=.*\W)/, message: "must include at least one uppercase letter and one special character" }
  validates :address, length: { maximum: 400 }
end
