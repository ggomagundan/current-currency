require 'test_helper'

class TelegramControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get telegram_index_url
    assert_response :success
  end

end
