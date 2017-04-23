require 'test_helper'

class UserTest < ActiveSupport::TestCase
  has_many :microposts, dependent: :destroy
  
  def feed
    Micropost.where("user_id = ?", id)
  end
  
  # test "the truth" do
  #   assert true
  # end
end
