require 'test_helper'

class MicropostTest < ActiveSupport::TestCase
   belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
  # test "the truth" do
  #   assert true
  # end
end
