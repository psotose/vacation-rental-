class Cabin < ApplicationRecord
  has_many :cabin_pics, dependent: :destroy
end
