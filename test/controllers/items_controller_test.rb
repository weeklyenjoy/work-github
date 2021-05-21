require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
=======
  test "should get index" do
    get items_index_url
    assert_response :success
  end

  test "should get show" do
    get items_show_url
    assert_response :success
  end

>>>>>>> 47b0f2f08b904b4447c25eb4c81ebc7cdc85eb8e
end
