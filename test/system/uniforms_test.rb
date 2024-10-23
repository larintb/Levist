require "application_system_test_case"

class UniformsTest < ApplicationSystemTestCase
  setup do
    @uniform = uniforms(:one)
  end

  test "visiting the index" do
    visit uniforms_url
    assert_selector "h1", text: "Uniforms"
  end

  test "should create uniform" do
    visit uniforms_url
    click_on "New uniform"

    fill_in "Collection", with: @uniform.collection
    fill_in "Color", with: @uniform.color
    fill_in "Price", with: @uniform.price
    fill_in "Quantity", with: @uniform.quantity
    fill_in "Size", with: @uniform.size
    click_on "Create Uniform"

    assert_text "Uniform was successfully created"
    click_on "Back"
  end

  test "should update Uniform" do
    visit uniform_url(@uniform)
    click_on "Edit this uniform", match: :first

    fill_in "Collection", with: @uniform.collection
    fill_in "Color", with: @uniform.color
    fill_in "Price", with: @uniform.price
    fill_in "Quantity", with: @uniform.quantity
    fill_in "Size", with: @uniform.size
    click_on "Update Uniform"

    assert_text "Uniform was successfully updated"
    click_on "Back"
  end

  test "should destroy Uniform" do
    visit uniform_url(@uniform)
    click_on "Destroy this uniform", match: :first

    assert_text "Uniform was successfully destroyed"
  end
end
