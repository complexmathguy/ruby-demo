require "test_helper"

class TournamentControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  setup do
    @tournament = tournaments(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should create tournament" do
    assert_difference("Tournament.count") do
      post tournaments_url, params: { tournament: { name:"test string for name", Type:Tournament.Types[0] } }
    end

    assert_redirected_to tournaments_url
  end

 
  
  test "should destroy tournament" do
    assert_difference("Tournament.count", -1) do
      delete tournament_url(@tournament)
    end

    assert_redirected_to tournaments_url
  end
  
end


