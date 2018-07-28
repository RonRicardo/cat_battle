require 'test_helper'

class BattleCatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle_cat = battle_cats(:one)
  end

  test "should get index" do
    get battle_cats_url, as: :json
    assert_response :success
  end

  test "should create battle_cat" do
    assert_difference('BattleCat.count') do
      post battle_cats_url, params: { battle_cat: { cat_id: @battle_cat.cat_id, name: @battle_cat.name, trainer: @battle_cat.trainer } }, as: :json
    end

    assert_response 201
  end

  test "should show battle_cat" do
    get battle_cat_url(@battle_cat), as: :json
    assert_response :success
  end

  test "should update battle_cat" do
    patch battle_cat_url(@battle_cat), params: { battle_cat: { cat_id: @battle_cat.cat_id, name: @battle_cat.name, trainer: @battle_cat.trainer } }, as: :json
    assert_response 200
  end

  test "should destroy battle_cat" do
    assert_difference('BattleCat.count', -1) do
      delete battle_cat_url(@battle_cat), as: :json
    end

    assert_response 204
  end
end
