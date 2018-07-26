class User < ApplicationRecord
  before_save { email.downcase! }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :name, presence: true, uniqueness: true

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  has_one :host, dependent: :destroy
  has_and_belongs_to_many :challenges
end
