require "test_helper"

class GhostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ghost = ghosts(:one)
  end

  test "should get index" do
    get ghosts_url
    assert_response :success
  end

  test "should get new" do
    get new_ghost_url
    assert_response :success
  end

  test "should create ghost" do
    assert_difference('Ghost.count') do
      post ghosts_url, params: { ghost: { age: @ghost.age, name: @ghost.name, volume: @ghost.volume } }
    end

    assert_redirected_to ghost_url(Ghost.last)
  end

  test "should show ghost" do
    get ghost_url(@ghost)
    assert_response :success
  end

  test "should get edit" do
    get edit_ghost_url(@ghost)
    assert_response :success
  end

  test "should update ghost" do
    patch ghost_url(@ghost), params: { ghost: { age: @ghost.age, name: @ghost.name, volume: @ghost.volume } }
    assert_redirected_to ghost_url(@ghost)
  end

  test "should destroy ghost" do
    assert_difference('Ghost.count', -1) do
      delete ghost_url(@ghost)
    end

    assert_redirected_to ghosts_url
  end
end
