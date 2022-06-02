require 'test_helper'

class ContactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'should initialize without parameters' do
    assert ::Contact.new
  end

end
