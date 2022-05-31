class Reservation < ApplicationRecord
  belongs_to :cabin
  belongs_to :user
end
