require 'test_helper'

class StudnetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studnet = studnets(:one)
  end

  test "should get index" do
    get studnets_url
    assert_response :success
  end

  test "should get new" do
    get new_studnet_url
    assert_response :success
  end

  test "should create studnet" do
    assert_difference('Studnet.count') do
      post studnets_url, params: { studnet: { email: @studnet.email, fname: @studnet.fname, lanme: @studnet.lanme } }
    end

    assert_redirected_to studnet_url(Studnet.last)
  end

  test "should show studnet" do
    get studnet_url(@studnet)
    assert_response :success
  end

  test "should get edit" do
    get edit_studnet_url(@studnet)
    assert_response :success
  end

  test "should update studnet" do
    patch studnet_url(@studnet), params: { studnet: { email: @studnet.email, fname: @studnet.fname, lanme: @studnet.lanme } }
    assert_redirected_to studnet_url(@studnet)
  end

  test "should destroy studnet" do
    assert_difference('Studnet.count', -1) do
      delete studnet_url(@studnet)
    end

    assert_redirected_to studnets_url
  end
end
