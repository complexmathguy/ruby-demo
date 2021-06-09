require "test_helper"

class LeagueControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  setup do
    @league = leagues(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should create league" do
    assert_difference("League.count") do
      post leagues_url, params: { league: { name:"test string for name" } }
    end

    assert_redirected_to leagues_url
  end

 
  
  test "should destroy league" do
    assert_difference("League.count", -1) do
      delete league_url(@league)
    end

    assert_redirected_to leagues_url
  end
  
end


