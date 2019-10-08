require 'test_helper'

class SyougaisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get syougais_index_url
    assert_response :success
  end

  test "should get edit" do
    get syougais_edit_url
    assert_response :success
  end

  test "should get add" do
    get syougais_add_url
    assert_response :success
  end

end
