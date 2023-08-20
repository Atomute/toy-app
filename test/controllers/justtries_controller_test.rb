require "test_helper"

class JusttriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @justtry = justtries(:one)
  end

  test "should get index" do
    get justtries_url
    assert_response :success
  end

  test "should get new" do
    get new_justtry_url
    assert_response :success
  end

  test "should create justtry" do
    assert_difference("Justtry.count") do
      post justtries_url, params: { justtry: { test: @justtry.test, trying: @justtry.trying } }
    end

    assert_redirected_to justtry_url(Justtry.last)
  end

  test "should show justtry" do
    get justtry_url(@justtry)
    assert_response :success
  end

  test "should get edit" do
    get edit_justtry_url(@justtry)
    assert_response :success
  end

  test "should update justtry" do
    patch justtry_url(@justtry), params: { justtry: { test: @justtry.test, trying: @justtry.trying } }
    assert_redirected_to justtry_url(@justtry)
  end

  test "should destroy justtry" do
    assert_difference("Justtry.count", -1) do
      delete justtry_url(@justtry)
    end

    assert_redirected_to justtries_url
  end
end
