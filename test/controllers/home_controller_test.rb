require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'h1', 'Welcome to Alex\'s Workout Tracker!'
  end

  test "should get contact" do
    get contact_url
    assert_response :success

    assert_select 'h1', 'Contact Us'
  end

  test "should get tree map" do
    get tree_map_url
    assert_response :success

    assert_select 'h1', 'Tree Map'
  end

  test "should post request contact but no email" do
    post request_contact_url
    assert_response :redirect
    assert_not_empty flash[:alert]
    assert_nil flash[:notice]
  end

  test "should post request contact" do
    post request_contact_url, params:
        {name: "Matthew", email: "matthew@me.com", telephone: "1234567890", message: "Hello"}
    assert_response :redirect
    assert_nil flash[:alert]
    assert_not_empty flash[:notice]
  end
end
