require 'test_helper'

class UsersController < ApplicationController
  before_action :authenticate_user!, :except=>[:show]
  test "should get show" do
    get :show
    assert_response :success
  end
  
  def index
    @users = User.paginate(page: params[:page])
  end

end
