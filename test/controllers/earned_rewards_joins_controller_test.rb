require 'test_helper'

class EarnedRewardsJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @earned_rewards_join = earned_rewards_joins(:one)
  end

  test "should get index" do
    get earned_rewards_joins_url
    assert_response :success
  end

  test "should get new" do
    get new_earned_rewards_join_url
    assert_response :success
  end

  test "should create earned_rewards_join" do
    assert_difference('EarnedRewardsJoin.count') do
      post earned_rewards_joins_url, params: { earned_rewards_join: { reward_id: @earned_rewards_join.reward_id, user_id: @earned_rewards_join.user_id } }
    end

    assert_redirected_to earned_rewards_join_url(EarnedRewardsJoin.last)
  end

  test "should show earned_rewards_join" do
    get earned_rewards_join_url(@earned_rewards_join)
    assert_response :success
  end

  test "should get edit" do
    get edit_earned_rewards_join_url(@earned_rewards_join)
    assert_response :success
  end

  test "should update earned_rewards_join" do
    patch earned_rewards_join_url(@earned_rewards_join), params: { earned_rewards_join: { reward_id: @earned_rewards_join.reward_id, user_id: @earned_rewards_join.user_id } }
    assert_redirected_to earned_rewards_join_url(@earned_rewards_join)
  end

  test "should destroy earned_rewards_join" do
    assert_difference('EarnedRewardsJoin.count', -1) do
      delete earned_rewards_join_url(@earned_rewards_join)
    end

    assert_redirected_to earned_rewards_joins_url
  end
end
