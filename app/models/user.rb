class User < ApplicationRecord
  has_secure_password

  has_many :items
  has_many :reservations, :foreign_key => "renter_id"

end
