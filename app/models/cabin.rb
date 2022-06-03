class Cabin < ApplicationRecord
  has_many :cabin_pics, dependent: :destroy
  has_many :reservations, dependent: :destroy

  def unavailable_dates
    reservations.pluck(:start_time, :end_time).map do |range|
      { from: range[0], to: range[1] }
    end
  end

  def first_available_date
    last_end_time = Reservation.order('end_time DESC').first&.end_time
    return Date.today if last_end_time.blank?
    list_unavailable_dates = unavailable_dates
    first_available_d = nil
    (Date.today..last_end_time).each do |date|
      result = list_unavailable_dates.select { |item| date.between?(item[:from], item[:to]) }
      if result.length == 0
        first_available_d = date
        break
      end
    end
    first_available_d
  end
end
