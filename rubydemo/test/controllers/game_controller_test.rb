require "test_helper"

class GameControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  setup do
    @game = games(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should create game" do
    assert_difference("Game.count") do
      post games_url, params: { game: { frames:100 } }
    end

    assert_redirected_to games_url
  end

 
  
  test "should destroy game" do
    assert_difference("Game.count", -1) do
      delete game_url(@game)
    end

    assert_redirected_to games_url
  end
  
end


