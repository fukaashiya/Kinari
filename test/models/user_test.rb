require 'test_helper'

class UserTest < ActiveSupport::TestCase
  has_many :microposts, dependent: :destroy
  # test "the truth" do
  #   assert true
  # end
end
