require 'test_helper'

class ProjectTypeJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_type_join = project_type_joins(:one)
  end

  test "should get index" do
    get project_type_joins_url
    assert_response :success
  end

  test "should get new" do
    get new_project_type_join_url
    assert_response :success
  end

  test "should create project_type_join" do
    assert_difference('ProjectTypeJoin.count') do
      post project_type_joins_url, params: { project_type_join: { project_id: @project_type_join.project_id, project_type_id: @project_type_join.project_type_id } }
    end

    assert_redirected_to project_type_join_url(ProjectTypeJoin.last)
  end

  test "should show project_type_join" do
    get project_type_join_url(@project_type_join)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_type_join_url(@project_type_join)
    assert_response :success
  end

  test "should update project_type_join" do
    patch project_type_join_url(@project_type_join), params: { project_type_join: { project_id: @project_type_join.project_id, project_type_id: @project_type_join.project_type_id } }
    assert_redirected_to project_type_join_url(@project_type_join)
  end

  test "should destroy project_type_join" do
    assert_difference('ProjectTypeJoin.count', -1) do
      delete project_type_join_url(@project_type_join)
    end

    assert_redirected_to project_type_joins_url
  end
end
