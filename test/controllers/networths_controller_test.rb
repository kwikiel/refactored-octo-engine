require 'test_helper'

class NetworthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @networth = networths(:one)
  end

  test "should get index" do
    get networths_url
    assert_response :success
  end

  test "should get new" do
    get new_networth_url
    assert_response :success
  end

  test "should create networth" do
    assert_difference('Networth.count') do
      post networths_url, params: { networth: { date: @networth.date, value: @networth.value } }
    end

    assert_redirected_to networth_url(Networth.last)
  end

  test "should show networth" do
    get networth_url(@networth)
    assert_response :success
  end

  test "should get edit" do
    get edit_networth_url(@networth)
    assert_response :success
  end

  test "should update networth" do
    patch networth_url(@networth), params: { networth: { date: @networth.date, value: @networth.value } }
    assert_redirected_to networth_url(@networth)
  end

  test "should destroy networth" do
    assert_difference('Networth.count', -1) do
      delete networth_url(@networth)
    end

    assert_redirected_to networths_url
  end
end
