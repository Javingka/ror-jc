require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success

    assert_select "title", "Home | J+C"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", I18n.t('contact.title') + " | J+C" 
  end

end
