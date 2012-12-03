require 'test_helper'

class UsermailsControllerTest < ActionController::TestCase
  setup do
    @usermail = usermails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usermails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usermail" do
    assert_difference('Usermail.count') do
      post :create, usermail: { email: @usermail.email, message: @usermail.message, name: @usermail.name, subject: @usermail.subject }
    end

    assert_redirected_to usermail_path(assigns(:usermail))
  end

  test "should show usermail" do
    get :show, id: @usermail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usermail
    assert_response :success
  end

  test "should update usermail" do
    put :update, id: @usermail, usermail: { email: @usermail.email, message: @usermail.message, name: @usermail.name, subject: @usermail.subject }
    assert_redirected_to usermail_path(assigns(:usermail))
  end

  test "should destroy usermail" do
    assert_difference('Usermail.count', -1) do
      delete :destroy, id: @usermail
    end

    assert_redirected_to usermails_path
  end
end
