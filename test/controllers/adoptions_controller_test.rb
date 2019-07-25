require 'test_helper'

class AdoptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption = adoptions(:one)
  end

  test "should get index" do
    get adoptions_url, as: :json
    assert_response :success
  end

  test "should create adoption" do
    assert_difference('Adoption.count') do
      post adoptions_url, params: { adoption: { age: @adoption.age, email: @adoption.email, name: @adoption.name, wolf_id: @adoption.wolf_id } }, as: :json
    end

    assert_response 201
  end

  test "should show adoption" do
    get adoption_url(@adoption), as: :json
    assert_response :success
  end

  test "should update adoption" do
    patch adoption_url(@adoption), params: { adoption: { age: @adoption.age, email: @adoption.email, name: @adoption.name, wolf_id: @adoption.wolf_id } }, as: :json
    assert_response 200
  end

  test "should destroy adoption" do
    assert_difference('Adoption.count', -1) do
      delete adoption_url(@adoption), as: :json
    end

    assert_response 204
  end
end
