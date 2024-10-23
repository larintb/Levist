require "test_helper"

class UniformsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @uniform = uniforms(:one)
  end

  test "should get index" do
    get uniforms_url
    assert_response :success
  end

  test "should get new" do
    get new_uniform_url
    assert_response :success
  end

  test "should create uniform" do
    assert_difference("Uniform.count") do
      post uniforms_url, params: { uniform: { collection: @uniform.collection, color: @uniform.color, price: @uniform.price, quantity: @uniform.quantity, size: @uniform.size } }
    end

    assert_redirected_to uniform_url(Uniform.last)
  end

  test "should show uniform" do
    get uniform_url(@uniform)
    assert_response :success
  end

  test "should get edit" do
    get edit_uniform_url(@uniform)
    assert_response :success
  end

  test "should update uniform" do
    patch uniform_url(@uniform), params: { uniform: { collection: @uniform.collection, color: @uniform.color, price: @uniform.price, quantity: @uniform.quantity, size: @uniform.size } }
    assert_redirected_to uniform_url(@uniform)
  end

  test "should destroy uniform" do
    assert_difference("Uniform.count", -1) do
      delete uniform_url(@uniform)
    end

    assert_redirected_to uniforms_url
  end
end
