require 'test_helper'

class BattlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle = battles(:one)
  end

  test "should get index" do
    get battles_url, as: :json
    assert_response :success
  end

  test "should create battle" do
    assert_difference('Battle.count') do
      post battles_url, params: { battle: { challenger_id: @battle.challenger_id, loser_id: @battle.loser_id, opponent_id: @battle.opponent_id, winner_id: @battle.winner_id } }, as: :json
    end

    assert_response 201
  end

  test "should show battle" do
    get battle_url(@battle), as: :json
    assert_response :success
  end

  test "should update battle" do
    patch battle_url(@battle), params: { battle: { challenger_id: @battle.challenger_id, loser_id: @battle.loser_id, opponent_id: @battle.opponent_id, winner_id: @battle.winner_id } }, as: :json
    assert_response 200
  end

  test "should destroy battle" do
    assert_difference('Battle.count', -1) do
      delete battle_url(@battle), as: :json
    end

    assert_response 204
  end
end
