require 'test_helper'

class ReservationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should initialize without parameters' do
    assert ::Reservation.new
  end  
  
  # test 'should not save without attributes' do
  #   cabin = Cabin.find(id: 1)
  #   reservation = Reservation.new(cabin_id: cabin.id)
  #   assert_not reservation.save
  # end

  test "invalid without start_time, end_time, name and email" do
    @reservation = Reservation.create(:start_time =>"", :end_time =>"", :name =>"", :email =>"")
    assert_not @reservation.valid?
  end

  # test 'invalid without start_time' do
  #   @reservation.start_time = nil
  #   refute @reservation.valid?, 'reservation is valid without start_time'
  #   assert_not_nil @reservation.errors[:start_time], 'no validation error for start_time present'
  # end  
end
