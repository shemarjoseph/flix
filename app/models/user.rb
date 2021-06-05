class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true 
  validates :email, presence: true,
                    format: { with: /\S+@\S/i },
                    uniqueness: true
  validates :password, length: { minimum: 10, allow_blank: true }
end
