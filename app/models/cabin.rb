class Cabin < ApplicationRecord
  has_many :cabin_pics, dependent: :destroy
  has_many :reservations, dependent: :destroy

  def unavailable_dates
    reservations.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end
end
