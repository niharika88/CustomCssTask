require 'test_helper'

class StylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get styles_url
    assert_response :success
  end

  test "should get new" do
    get new_style_url
    assert_response :success
  end

  test "should create style" do
    assert_difference('Style.count') do
      post styles_url, params: { style: { background_color: @style.background_color, block_height: @style.block_height, email_color: @style.email_color, email_size: @style.email_size, email_style: @style.email_style, name_color: @style.name_color, name_size: @style.name_size, name_style: @style.name_style, text_color: @style.text_color, text_size: @style.text_size, text_style: @style.text_style } }
    end

    assert_redirected_to style_url(Style.last)
  end

  test "should show style" do
    get style_url(@style)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_url(@style)
    assert_response :success
  end

  test "should update style" do
    patch style_url(@style), params: { style: { background_color: @style.background_color, block_height: @style.block_height, email_color: @style.email_color, email_size: @style.email_size, email_style: @style.email_style, name_color: @style.name_color, name_size: @style.name_size, name_style: @style.name_style, text_color: @style.text_color, text_size: @style.text_size, text_style: @style.text_style } }
    assert_redirected_to style_url(@style)
  end

  test "should destroy style" do
    assert_difference('Style.count', -1) do
      delete style_url(@style)
    end

    assert_redirected_to styles_url
  end
end
