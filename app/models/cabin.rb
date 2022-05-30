class Cabin < ApplicationRecord
  has_many :cabin_pics, dependent: :destroy
  has_many :reservations, dependent: :destroy
end
