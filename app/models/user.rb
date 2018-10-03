class User < ApplicationRecord

  has_many :items
  has_many :reservations, :foreign_key => "renter_id"

end
