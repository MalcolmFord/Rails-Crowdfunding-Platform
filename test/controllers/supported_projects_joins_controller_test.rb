require 'test_helper'

class SupportedProjectsJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supported_projects_join = supported_projects_joins(:one)
  end

  test "should get index" do
    get supported_projects_joins_url
    assert_response :success
  end

  test "should get new" do
    get new_supported_projects_join_url
    assert_response :success
  end

  test "should create supported_projects_join" do
    assert_difference('SupportedProjectsJoin.count') do
      post supported_projects_joins_url, params: { supported_projects_join: { amount: @supported_projects_join.amount, project_id: @supported_projects_join.project_id, user_id: @supported_projects_join.user_id } }
    end

    assert_redirected_to supported_projects_join_url(SupportedProjectsJoin.last)
  end

  test "should show supported_projects_join" do
    get supported_projects_join_url(@supported_projects_join)
    assert_response :success
  end

  test "should get edit" do
    get edit_supported_projects_join_url(@supported_projects_join)
    assert_response :success
  end

  test "should update supported_projects_join" do
    patch supported_projects_join_url(@supported_projects_join), params: { supported_projects_join: { amount: @supported_projects_join.amount, project_id: @supported_projects_join.project_id, user_id: @supported_projects_join.user_id } }
    assert_redirected_to supported_projects_join_url(@supported_projects_join)
  end

  test "should destroy supported_projects_join" do
    assert_difference('SupportedProjectsJoin.count', -1) do
      delete supported_projects_join_url(@supported_projects_join)
    end

    assert_redirected_to supported_projects_joins_url
  end
end
