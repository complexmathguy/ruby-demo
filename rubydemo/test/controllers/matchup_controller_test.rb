require "test_helper"

class MatchupControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  setup do
    @matchup = matchups(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should create matchup" do
    assert_difference("Matchup.count") do
      post matchups_url, params: { matchup: { name:"test string for name" } }
    end

    assert_redirected_to matchups_url
  end

 
  
  test "should destroy matchup" do
    assert_difference("Matchup.count", -1) do
      delete matchup_url(@matchup)
    end

    assert_redirected_to matchups_url
  end
  
end


