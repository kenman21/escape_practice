class User < ApplicationRecord
  has_secure_password

  enum status: {active: 1, inactive: 0}

  has_many :items
  has_many :reservations, :foreign_key => "renter_id"

  validates :password_digest, :username, uniqueness: true

end
