class Reservation < ApplicationRecord
  belongs_to :cabin
  belongs_to :user, optional: true

  validates :start_time, :end_time, :name, :email, presence: true
  validate :end_time_after_start_time

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "Debe ser posterior a la fecha de inicio")
    end
 end
end
