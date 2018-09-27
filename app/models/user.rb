class User < ApplicationRecord
  has_many :lists

  before_save { self.email = email.downcase if email.present? }

  validates :name,
            length: { minimum: 1, maximum: 100 },
            allow_blank: true

  validates :password, presence: true, length: { minimum: 5 }

  validates :email,
            allow_blank: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
end
