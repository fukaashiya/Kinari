require 'test_helper'

class RelationshipTest < ActiveSupport::TestCase
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :follower_id, presence: true
  validates :followed_id, presence: true
  # test "the truth" do
  #   assert true
  # end
end
