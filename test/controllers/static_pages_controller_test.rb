require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "reco:"
  end

  test "should get register" do
    get :register
    assert_response :success
    assert_select "title", "reco:"
  end

end
