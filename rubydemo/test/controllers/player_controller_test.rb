require "test_helper"

class PlayerControllerTest < ActionDispatch::IntegrationTest
  # called before every single test
  setup do
    @player = players(:one)
  end

  # called after every single test
  teardown do
    # when controller is using cache it may be a good idea to reset it afterwards
    Rails.cache.clear
  end

  test "should create player" do
    assert_difference("Player.count") do
      post players_url, params: { player: { name:"test string for name", dateOfBirth:1.week.ago, height:10, isProfessional:true } }
    end

    assert_redirected_to players_url
  end

 
  
  test "should destroy player" do
    assert_difference("Player.count", -1) do
      delete player_url(@player)
    end

    assert_redirected_to players_url
  end
  
end


