require 'test_helper'

class WolvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wolf = wolves(:one)
  end

  test "should get index" do
    get wolves_url, as: :json
    assert_response :success
  end

  test "should create wolf" do
    assert_difference('Wolf.count') do
      post wolves_url, params: { wolf: { age: @wolf.age, description: @wolf.description, name: @wolf.name, photo: @wolf.photo } }, as: :json
    end

    assert_response 201
  end

  test "should show wolf" do
    get wolf_url(@wolf), as: :json
    assert_response :success
  end

  test "should update wolf" do
    patch wolf_url(@wolf), params: { wolf: { age: @wolf.age, description: @wolf.description, name: @wolf.name, photo: @wolf.photo } }, as: :json
    assert_response 200
  end

  test "should destroy wolf" do
    assert_difference('Wolf.count', -1) do
      delete wolf_url(@wolf), as: :json
    end

    assert_response 204
  end
end
